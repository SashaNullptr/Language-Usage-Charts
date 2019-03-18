Gem::Specification.new do |s|
  s.name        = 'language-usage-charts'
  s.version     = '0.1.0'
  s.date        = '2019-03-18'
  s.summary     = "Stand alone language usage charts."
  s.description = "Display break-down of programming language usage in a git repo."
  s.authors     = ["Sasha Fox"]
  s.email       = 'sashanullptr@gmail.com'
  s.files       = ["lib/language_usage_graphics.rb"]
  s.license       = 'MIT'
  spec.add_runtime_dependency 'rugged', '~> 0.28.1', '>= 0.25'
  spec.add_runtime_dependency 'linguist', '~> 7.3.1', '>= 7.0.0'
  spec.add_runtime_dependency 'gruff', '~> 0.7.0', '>= 0.6'
end
