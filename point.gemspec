# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'point/version'

Gem::Specification.new do |spec|
  spec.name          = "point"
  spec.version       = Point::VERSION
  spec.authors       = ["Coromoto Leon"]
  spec.email         = ["cleon@ull.edu.es"]
  spec.summary       = %q{Clase Ruby para reprentar Puntos en dos y tres dimensiones.}
  spec.description   = %q{Clase Ruby para el Tema Programación Orientada a Objetos.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
