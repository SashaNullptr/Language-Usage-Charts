Gem::Specification.new do |s|
  s.name = 'language-usage-charts'
  s.version = '0.1.0'
  s.date = '2019-03-18'
  s.summary = "Stand alone language usage charts."
  s.description = "Display break-down of programming language usage in a git repo."
  s.authors = ["Sasha Fox"]
  s.email = 'sashanullptr@gmail.com'
  s.files = `git ls-files`.split($\)
  s.license = 'MIT'
  s.executables = ["generate_usage_chart"]
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'rugged', '~> 0.28', '>= 0.28.1'
  s.add_runtime_dependency 'github-linguist', '~> 7.3', '>= 7.3.1'
  s.add_runtime_dependency 'gruff', '~> 0.7', '>= 0.7.0'
end
