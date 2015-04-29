# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)

puts "Load path = '#{$LOAD_PATH}'"

require "rcm/version"

Gem::Specification.new do |s|
  s.name = 'rcm-server'
  s.version = RCM::VERSION
  s.homepage = ''
  s.licenses = ["GPL"]

  s.authors = ["Fiona Bianchi"]
  s.email   = ["fiona.bianchi@dwp.gsi.gov.uk"]

  s.files = `svn ls -R`.split("\n")

  s.add_development_dependency 'rake-compiler', '>= 10.3.2'
  s.add_runtime_dependency 'eventmachine', '>= 1.0.3'
  s.add_runtime_dependency 'sinatra', '>=1.4.5'
  s.add_runtime_dependency 'sinatra-contrib', '>=1.4.2'
  s.add_runtime_dependency 'rack', '>=1.5.2'
  s.add_development_dependency 'rack-test'


  s.summary = 'RCM Back-end server'
  s.description = "Fancy GUI for the application status pages"

  s.rdoc_options = ["--title", "RCM Server", "--main", "README.md", "-x", "lib/rcm/version"]
end