#!/bin/bash

# For each article to download, I suggest the following approach:
# 0. download a local copy of the html page
# 1. use pandoc to convert to a markdown version of the article
# 2. manually clean up the markdown file, 
#    but let all visual content link to each original source
# 3. include the markdown file in the website
# 4. inspect the content in the website, tidy up if necessary
# 5. verify that only the images we want remain and no additional content is linked
# 6. update the frontmatter with a canonical_url if needed
# 7. check the source url in our current website; replace according to your judgement

# ---

source_url="https://www.linkedin.com/pulse/fixed-price-agile-transformation-peter-merel/"
file_name="2017-09-27-fixed-price-agile-transformation"

# ---

local_copy_url="./output/$file_name.html"
markdown_file_name="../source/articles/backlog/$file_name.html.markdown"

wget -k -O $local_copy_url $source_url

# replace 'src="//:0"'' with '' and 
# replace 'data-li-src' with src

sed -i '' 's/src="\/\/:0"//g' "$local_copy_url"
sed -i '' 's/data-li-src/src/g' "$local_copy_url"

# Example pandoc command
pandoc -s -r html "$local_copy_url" -o "$markdown_file_name"

# add the source url as th canonical url for now
sed -i '' '2i\
canonical_url:
' "$markdown_file_name"
sed -i '' "s,canonical_url:,canonical_url: $source_url,g" "$markdown_file_name"

echo 'The source url is referenced in the following files, consider replacing it:'
grep -rnw '../source/articles' -e $source_url

# -----------
# If you want to include the images as local content, then do the following:
#
# 1. run a wget command on the new article _in the xscale website_ (published or run locally),
#    this will store all the linked external file in a clear location
# 2. copy the images to an appropriate directory in the website
# 3. update the links in the aource markdon file

# Example wget command:
# get page and all linked content
# -p will get you all the required elements to view the site correctly 
# (css, images, etc). 
# The -k will change all links (to include those for CSS & images) to 
# allow you to view the page offline as it appeared online.
# -H spans all domains; that is even cdn'ed images will get downloaded
#wget -p -k -Poutput -H $source_url
