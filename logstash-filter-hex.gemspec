Gem::Specification.new do |s|
  s.name = 'logstash-filter-hex'
  s.version = '0.0.3'
  s.licenses = ['Apache-2.0']
  s.summary = "This filter helps you encode and decode fields in hex."
  s.description = "Logstash plugin to encode and decode hex."
  s.authors = ["Fabian Franz"]
  s.email = 'franz.fabian.94@gmail.com'
  s.homepage = "http://github.com/fabianfrz/logstash-filter-hex"
  s.require_paths = ["lib"]
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','Gemfile','LICENSE']
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  s.add_runtime_dependency "logstash-core", ">= 1.0"
  s.add_development_dependency 'logstash-devutils', '~> 1.1'
end
