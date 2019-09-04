# frozen_string_literal: true

require 'jekyll-import'

JekyllImport::Importers::WordPress.run(
  'dbname' => 'db114853_14',
  'user' => 'db114853_14',
  'password' => '',
  'host' => '192.168.178.28',
  'port' => '33360',
  'socket' => '',
  'table_prefix' => 'wp_',
  'site_prefix' => '6_',
  'clean_entities' => true,
  'comments' => true,
  'categories' => true,
  'tags' => true,
  'more_excerpt' => true,
  'more_anchor' => true,
  'extension' => 'html',
  'status' => ['publish']
)
