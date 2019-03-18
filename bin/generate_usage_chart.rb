#!/usr/bin/env ruby

required 'rugged'
required 'linguist'
required 'gruff'

require 'language_usage_charts'

repo = Rugged::Repository.new(".")
project = Linguist::Repository.new( repo, repo.head.target_id )

normalized_scores = normalize_scores( project.languages )

graph = render_language_breakdown( normalized_scores )
graph.write( file_path,"./language_breakdown.png" )
