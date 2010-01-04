require 'rubygems'
require 'content_focus'

html_data = File.open(File.join(File.dirname(__FILE__), '../spec/data/twitter_profile.html')).read
content_focus = ContentFocus::HTML.new(html_data)

# Will return the most relevant content in text
static_text = content_focus.static_text

# Will return the most relevant block of content in a Hpricot HTML tree element
static_fragment = content_focus.static_fragment
