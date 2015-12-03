Time.zone = 'Pacific Time (US & Canada)'

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'
set :markdown_engine, :kramdown
set :markdown, parse_block_html: true
set :haml, { attr_wrapper: '"' }

page 'index.html', layout: 'default'

activate :livereload

configure :build do
  activate :minify_css
  activate :minify_javascript
end

ignore '*.swp'
ignore '.htaccess.swp'

