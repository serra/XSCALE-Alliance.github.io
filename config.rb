activate :sprockets

set :css_dir,               'css'
set :js_dir,                'js'
set :images_dir,            'img'
set :fonts_dir,             'assets'

# Slim template engine
require 'slim'

# explicit require of sass as suggested by 'tilt'
require 'sass'

require 'font-awesome-sass'

# meta tags
activate :metaman, host: 'https://xscalealliance.org'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.build_before = true # runs build before deploying
  deploy.deploy_method = :git
  deploy.branch = 'master'
end

page "/feed.xml", layout: false
page "/news/feed.xml", layout: false
activate :blog do |blog|
  blog.name = "news"
  blog.prefix = "news"
  blog.layout = "article_layout"
end

activate :blog do |blog|
  blog.name = "directory"
  blog.prefix = "directory"
  blog.sources = ":year-:title.html"
  blog.permalink = "{title}.html"
  blog.layout = "person"
  blog.tag_template = "directory/tag.html"
end

activate :blog do |blog|
  blog.name = "articles"
  blog.prefix = "articles"
  blog.layout = "article"
end

set :relative_links, true

