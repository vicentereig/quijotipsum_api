Gem::Specification.new do |s|
  s.name               = 'quijotipsum_api'
  s.homepage           = 'http://github.com/vicentereig/lipsum-api'
  s.platform           = Gem::Platform::RUBY
  s.version            = '0.1'
  s.summary            = 'An Interface to Quijotipsum.com written in Ruby. It provides an API and a command line command.'
  s.require_paths      = %w[lib]
  s.author             = "Vicente Reig Rincón de Arellano"
  s.email              = "vicente.reig@gmail.com"
  s.test_files         = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
  s.bindir             = 'bin'
  s.executables        = ['lipsum']
  s.default_executable = 'lipsum'

  s.add_runtime_dependency("thor")
  s.add_runtime_dependency("nokogiri")
  s.add_runtime_dependency("httparty")
  s.add_development_dependency("rake")
  s.add_development_dependency("bundler")

  s.files = %w[
    bin/quijotipsum
    lib/quijotipsum.rb

    test/fixtures/quijotipsum_words.html
    test/fixtures/quijotipsum_paragraphs.html
    test/quijotipsum_test.rb
    Gemfile
    LICENSE
    README.markdown
    Rakefile
  ]
end
