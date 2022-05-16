# -*- encoding: utf-8 -*-
# stub: temp_mail_api 0.0.5 ruby lib
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'temp_mail_api/version'

Gem::Specification.new do |s|
  s.name = "temp_mail_api"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Denis Kuznetsov"]
  s.date = "2022-05-11"
  s.description = "Official https://temp-mail.org/ API realization in Ruby"
  s.email = ["denis@f7.ru"]
  s.files = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "temp_mail_api.gemspec", "lib/temp_mail_api.rb", "lib/temp_mail_api/api.rb", "lib/temp_mail_api/client.rb", "lib/temp_mail_api/client/domains.rb", "lib/temp_mail_api/configuration.rb", "lib/temp_mail_api/connection.rb", "lib/temp_mail_api/request.rb", "lib/temp_mail_api/version.rb"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Gem to wrap Official https://temp-mail.org API"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 2.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0.4.0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
  end
end
