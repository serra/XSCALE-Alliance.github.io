require 'slim'

# Simple class to represent an environment
class ProfilePageContent
  attr_accessor :title
  attr_accessor :year
  attr_accessor :tags
  attr_accessor :linkedin
  attr_accessor :github
  attr_accessor :twitter
  attr_accessor :contact
  attr_accessor :short_bio
end

env = ProfilePageContent.new
env.title = "Awesome Coach"
env.year = 2019
env.tags = "xba-coach, xpm-coach"
env.linkedin = 'https://www.linkedin.com/in/marijnvanderzee'
env.github = 'https://github.com/serra'
env.twitter = 'https://twitter.com/marijnvanderzee'
env.contact = 'https://www.serraict.com/pages/contact'
env.short_bio = 'I love to guide software teams ...'

# Read the contents file in as a string
contents = File.open("./scripts/profile-page-content-template.slim", "rb").read

# Create new template object with the layout
#l = Slim::Template.new { layout }

Slim::Engine.options[:pretty] = true

# Render the contents passing in the environment: env
# so that it can resolve: = name
c = Slim::Template.new { contents }.render(env)
puts c

# Render the layout passing it the rendered contents
# as the block. This is what yield in layout.slim will get
#puts l.render{ c }