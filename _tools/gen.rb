#!/usr/bin/env ruby
# frozen_string_literal: true

# if RUBY_VERSION =~ /1.9/ # assuming you're running Ruby ~1.9
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
# end

require 'bundler/setup'
puts 'j'
require 'pry'
puts 'jll'
require 'front_matter_parser'
puts 'jlo'
require 'yaml'
puts 'jl'
require 'jekyll'
require 'jekyll/utils'


def write(needle, type:)
  # binding.pry
  needle = Jekyll.Utils.slugify(needle)
  File.open("../#{type}/#{needle}.md", 'w') do |file|
    file.write("---\n")
    file.write("layout: #{type}\n")
    file.write("#{type}: #{needle}\n")
    file.write("---\n")
  end
end

loader = FrontMatterParser::Loader::Yaml.new(whitelist_classes: [Time])

puts 'jo'
Dir.glob("../_posts/*").each do |filename|
  puts filename
  parsed = FrontMatterParser::Parser.parse_file(filename, loader: loader).front_matter
  parsed.fetch("tags", []).each { |tag| write(tag, type: 'tag') }
  parsed.fetch("categories", []).each { |category| write(category, type: 'category') }
end
