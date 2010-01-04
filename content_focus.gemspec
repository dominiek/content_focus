# -*- encoding: utf-8 -*-
 
Gem::Specification.new do |s|
  s.name = "content_focus"
  s.version = "0.1.0"
 
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["dominiek"]
  s.date = "2010-01-04"
  s.description = "This is a little gem that allows you to input raw HTML and extract the most relevant piece of content."
  s.email = "info@dominiek.com"
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["README.textile"] + Dir.glob("{spec,lib,examples}/**/*")
  s.homepage = "http://github.com/dominiek/content_focus"
  s.rdoc_options = ["--title", "Content Focus", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README.textile", "--inline-source", "--exclude", "^(examples)/"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.3.5"
  s.summary = s.description
  s.test_files = ["spec/content_focus_spec.rb"]
end
