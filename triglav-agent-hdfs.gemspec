# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'triglav/agent/hdfs/version'

Gem::Specification.new do |spec|
  spec.name          = "triglav-agent-hdfs"
  spec.version       = Triglav::Agent::Hdfs::VERSION
  spec.authors       = ["Naotoshi Seo"]
  spec.email         = ["sonots@gmail.com"]

  spec.summary       = %q{Triglav Agent for HDFS.}
  spec.description   = %q{Triglav Agent for HDFS.}
  spec.homepage      = "https://github.com/triglav-dataflow/triglav-agent-hdfs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "serverengine"
  spec.add_dependency "dotenv"
  spec.add_dependency "jbundler"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
