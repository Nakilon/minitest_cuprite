Gem::Specification.new do |spec|
  spec.name         = "minitest_cuprite"
  spec.version      = "0.0.0"
  spec.summary      = "helper for cuprite+minitest"

  spec.author       = "Victor Maslov aka Nakilon"
  spec.email        = "nakilon@gmail.com"
  spec.license      = "MIT"

  spec.add_dependency "minitest"
  spec.add_dependency "cuprite"

  spec.files        = %w{ LICENSE minitest_cuprite.gemspec lib/minitest_cuprite.rb }
end
