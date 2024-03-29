# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

# activate :autoprefixer do |prefix|
#   prefix.browsers = "last 2 versions"
# end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :livereload

activate :directory_indexes
page "/server.php", directory_index: false
set :build_dir, 'public/'
# 
set :site_name, "We Save Homes"
# <%= settings.site_name %>

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end


# Setting up Blog
activate :blog do |blog|
  # set options on blog
  blog.permalink = "blog/{title}.html"
  blog.paginate = true
  blog.page_link = "{num}"
  blog.sources = "posts/{year}-{month}-{day}-{title}.html"
  blog.layout = "blog"
  blog.per_page = 10
  blog.tag_template = "related-post.html"
  blog.taglink = "related-post/{tag}.html"
end
# Current URL  
activate :aria_current
#   
activate :minify_html do |html|
  html.remove_multi_spaces        = true   # Remove multiple spaces
  html.remove_comments            = true   # Remove comments
  html.remove_intertag_spaces     = false  # Remove inter-tag spaces
  html.remove_quotes              = true   # Remove quotes
  html.simple_doctype             = false  # Use simple doctype
  html.remove_script_attributes   = true   # Remove script attributes
  html.remove_style_attributes    = false   # Remove style attributes
  html.remove_link_attributes     = false   # Remove link attributes
  html.remove_form_attributes     = false  # Remove form attributes
  html.remove_input_attributes    = false   # Remove input attributes
  html.remove_javascript_protocol = true   # Remove JS protocol
  html.remove_http_protocol       = false  # Remove HTTP protocol
  html.remove_https_protocol      = false  # Remove HTTPS protocol
  html.preserve_line_breaks       = false  # Preserve line breaks
  html.simple_boolean_attributes  = true   # Use simple boolean attributes
  html.preserve_patterns          = nil    # Patterns to preserve
end


# # disable layout
# page ".htaccess.apache", :layout => false

# # rename file after build
# after_build do
#   File.rename 'public/htaccess.apache', '/public/.htaccess'
# end