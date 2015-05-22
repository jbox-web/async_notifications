# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'async_notifications/version'

Gem::Specification.new do |s|
  s.name        = 'async_notifications'
  s.version     = AsyncNotifications::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Nicolas Rodriguez']
  s.email       = ['nrodriguez@jbox-web.com']
  s.homepage    = 'https://github.com/jbox-web/async_notifications'
  s.summary     = %q{A Ruby gem who provides a small DSL to register Async notifications channels and events}
  s.license     = 'MIT'

  s.rubyforge_project = 'async_notifications'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
