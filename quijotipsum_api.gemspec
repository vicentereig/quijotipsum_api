Gem::Specification.new do |s|
  s.name               = 'quijotipsum_api'
  s.homepage           = 'http://github.com/vicentereig/quijotipsum_api'
  s.platform           = Gem::Platform::RUBY
  s.version            = '0.2'
  s.summary            = 'An Interface to Quijotipsum.com written in Ruby. It provides an API and a command line command.'
  s.require_paths      = %w[lib]
  s.author             = "Vicente Reig Rincón de Arellano"
  s.email              = "vicente.reig@gmail.com"
  s.bindir             = 'bin'
  s.executables        = ['quijotipsum']
  s.default_executable = 'quijotipsum'

  s.add_runtime_dependency("thor")
  s.add_runtime_dependency("httparty")

  s.files = %w[
    bin/quijotipsum
    lib/quijotipsum.rb
    LICENSE
    README.markdown
  ]
end
