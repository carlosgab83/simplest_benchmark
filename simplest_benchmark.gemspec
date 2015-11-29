Gem::Specification.new do |s|
  s.name        = 'simplest_benchmark'
  s.version     = '0.0.3'
  s.date        = '2015-11-28'
  s.summary     = "Benchmark your code fastest, simplest and get pragmatic results."
  s.description = "Counts miliseconds transcurred between bs_begin and bs_end ruby calls. It can be nested for benchmark each part of the code you want. Documentation and code in https://github.com/carlosgab83/simplest_benchmark/"
  s.authors     = ["Carlos Ochoa"]
  s.email       = 'carlosgab83@gmail.com'
  s.files       = `git ls-files -z`.split("\x0")
  s.homepage    = 'http://rubygems.org/gems/simplest_benchmark'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]


  s.add_development_dependency "bundler", "~> 1.6"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "rspec-its", "~> 1.0"
end