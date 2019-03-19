#!/usr/bin/env ruby

require 'rugged'
require 'linguist'
require 'gruff'

require_relative '../lib/language_usage_graphics.rb'

repo = Rugged::Repository.new(".")
project = Linguist::Repository.new( repo, repo.head.target_id )

normalized_scores = LanguageUsageCharts.normalize_scores( project.languages )

graph = LanguageUsageCharts.render_language_breakdown( normalized_scores )
file_path = File.join(__dir__, 'language_breakdown.png')
graph.write( file_path )
