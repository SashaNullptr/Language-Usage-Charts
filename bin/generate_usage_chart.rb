#!/usr/bin/env ruby

require 'rugged'
require 'linguist'
require 'gruff'

require 'language_usage_graphics'

repo = Rugged::Repository.new(".")
project = Linguist::Repository.new( repo, repo.head.target_id )

normalized_scores = LanguageUsageCharts::normalize_scores( project.languages )

graph = LanguageUsageCharts::render_language_breakdown( normalized_scores )
graph.write( file_path,"./language_breakdown.png" )
