#!/usr/bin/env ruby
# frozen_string_literal: true

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

require 'bundler/setup'
require 'pry'
require 'front_matter_parser'
require 'yaml'
require 'jekyll'

def write(needle, type:)
  slug = Jekyll::Utils.slugify(needle)
  File.open("../#{type}/#{slug}.md", 'w') do |file|
    file.write("---\n")
    file.write("layout: #{type}\n")
    file.write("title: '#{needle}'\n")
    file.write("---\n")
  end
end

loader = FrontMatterParser::Loader::Yaml.new(whitelist_classes: [Time])

Dir.glob("../_posts/*").each do |filename|
  puts filename
  parsed = FrontMatterParser::Parser.parse_file(filename, loader: loader).front_matter
  parsed.fetch("tags", []).each { |tag| write(tag, type: 'tag') }
  parsed.fetch("categories", []).each { |category| write(category, type: 'category') }
end
