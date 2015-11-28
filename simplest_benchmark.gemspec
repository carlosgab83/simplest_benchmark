Gem::Specification.new do |s|
  s.name        = 'simplest_benchmark'
  s.version     = '0.0.1'
  s.date        = '2015-11-28'
  s.summary     = "Benchmark your code fastest, simplest and get pragmatic results."
  s.description = "Counts miliseconds transcurred between bs_begin and bs_end calls. It can be nested for benchmark each part of the code you want."
  s.authors     = ["Carlos Ochoa"]
  s.email       = 'carlosgab83@gmail.com'
  s.files       = ["lib/simplest_benchmark.rb", "lib/simplest_benchmark_logger.rb"]
  s.homepage    =
    'http://rubygems.org/gems/simplest_benchmark'
  s.license       = 'MIT'

  s.add_development_dependency "bundler", "~> 1.6"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "rspec-its", "~> 1.0"
end