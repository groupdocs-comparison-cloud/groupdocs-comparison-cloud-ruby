require './lib/groupdocs_comparison_cloud/version'

Gem::Specification.new do |s|
  s.name        = 'groupdocs_comparison_cloud'
  s.version     = GroupDocsComparisonCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.summary     = 'GroupDocs.Comparison Cloud Ruby SDK'
  s.description = 'Ruby gem for communicating with the GroupDocs.Comparison Cloud API'
  s.author      = 'GroupDocs'
  s.email       = 'support@groupdocs.cloud'
  s.homepage    = 'https://products.groupdocs.cloud/comparison/ruby'
  s.metadata    = { 'source_code_uri' => 'https://github.com/groupdocs-comparison-cloud/groupdocs-comparison-cloud-ruby' }

  s.add_runtime_dependency 'faraday', '~> 0.14.0'
  s.add_runtime_dependency 'addressable', '~> 2.5.0', '>= 2.5.0'
  
  s.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '~> 2.3'
end
