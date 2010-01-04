# -*- encoding: utf-8 -*-
 
Gem::Specification.new do |s|
  s.name = "html_content_detector"
  s.version = "0.1.0"
 
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["dominiek"]
  s.date = "2010-01-04"
  s.description = "Detects and extracts relevant content on an HTML page. (I wrote this a while back)"
  s.email = "info@dominiek.com"
  s.extra_rdoc_files = ["README"]
  s.files = [
    "README", 
    "Rakefile",
  ] + Dir.glob("{spec,lib}/**/*")
  s.homepage = "http://github.com/dominiek/html_content_detector"
  s.rdoc_options = ["--title", "HTML Content Detector", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README", "--inline-source", "--exclude", "^(examples)/"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.3.5"
  s.summary = s.description
  s.test_files = ["spec/jsonbuilder_spec.rb"]
end