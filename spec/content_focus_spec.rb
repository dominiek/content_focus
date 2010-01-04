

require 'rubygems'
require 'spec'
require File.join(File.dirname(__FILE__), '../lib/content_focus')

describe ContentFocus::Version, "#to_version" do
  it "should return version in 'X.Y.Z' format" do
    ContentFocus::Version.to_version.should =~ /\d+\.\d+\.\d+/
  end
end

describe ContentFocus::HTML, '#static_text' do
  
  {
    'simple_with_navigation'     => ['div', 'id', 'post_1'],
    'kakuteru_article'           => ['div', 'class', 'read page'],
    'wordpress_article'          => ['div', 'class', 'post-body entry-content'],
    'typad_article'              => ['div', 'class', 'content'],
    'twitter_profile'            => ['ul', 'class', 'about vcard entry-author'],
    'kakuteru_index'             => ['div', 'class', 'about'],
    'google_code_statistics'     => ['div', 'class', 'article'],
    'wordpress_custom_article'   => ['div', 'id', 'post-15361'],
    'movable_type_article'       => ['div', 'class', 'asset-more'],
    #'movable_type_index'         => ['div', 'id', 'home_posts_block'],
    'confreaks'                  => ['td', 'id', nil]
  }.each do |template,assertions|
    
    it "#{template} should return #{assertions.inspect}" do
      html_focus = ContentFocus::HTML.new(File.open(File.join(File.dirname(__FILE__), "data/#{template}.html")).read)
      fragment = html_focus.static_fragment
      element = fragment[:element]
      element.name.should == assertions[0]
      element.attributes[assertions[1]].should == assertions[2]
    end
    
  end
end
