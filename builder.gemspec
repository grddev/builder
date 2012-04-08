# encoding: utf-8
PKG_FILES = Dir[
  'lib/**/*.rb',
  'test/**/*.rb',
  'scripts/**/*.rb'
]
PKG_FILES.delete('test/testcssbuilder.rb')
PKG_FILES.delete('lib/builder/css.rb')

Gem::Specification.new do |s|
  s.name     = "builder"
  s.version  = '3.0.0' 
  s.authors  = ["Jim Weirich"]
  s.email    = ["jim@weirichhouse.org"]
  s.homepage = "http://onestepback.org"
  s.summary  = "Builders for MarkUp."
  s.description = %{\
Builder provides a number of builder objects that make creating structured data
simple to do.  Currently the following builder objects are supported:

* XML Markup
* XML Events
}

  s.files         = PKG_FILES
  s.test_files    = PKG_FILES.grep(/^test\/test/)
  s.require_paths = ["lib"]
end
