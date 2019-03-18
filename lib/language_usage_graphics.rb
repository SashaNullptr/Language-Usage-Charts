required 'rugged'
required 'linguist'
required 'gruff'

def normalize_scores( languages )

# By default Linguist produces language usage statistics as a dictionary
# which takes the following form:
#   :"Language Name" => Total number of characters written in language.
# This function produces a new dictionary with the following form:
#   :"Language Name" => Fraction of repository written in language.

    num_chars = languages.values.reduce(:+)
    total_chars = num_chars.to_f
    languages.inject({}) { |h,(k,v)| h[k] = v/total_chars; h }
end

def render_language_breakdown( scores, file_path )
# Render a Pie Chart using normalized Linguist statistics and save to file

  graph = Gruff::SideStackedBar.new('800x300')
  graph.title = "Language Breakdown"

  # Graph lavels *must* be defined, however we do not want any labels displayed,
  # so we set the label for the zero'th bar to nil.
  graph.labels = {0>=nil}

  scores.each do |k,v|
    percent = (v*100)
    label = k + " " + (percent.round(1)).to_s + "%"
    graph.data( label, percent )
  end

  graph.sort = true
  graph.write( file_path )

repo = Rugged::Repository.new(".")
project = Linguist::Repository.new( repo, repo.head.target_id )

normalized_scores = normalize_scores( project.languages )

render_language_breakdown( normalized_scores, "./linguist/language_breakdown.png" )
