require "capybara/cuprite"
def minitest_cuprite browser_options = {}
  Capybara.current_driver = Capybara.javascript_driver = :cuprite
  Capybara.register_driver :cuprite do |app|
    Capybara::Cuprite::Driver.new(app, {browser_options: {"no-sandbox": nil}}.merge(browser_options)).tap do |_|
      yield _ if block_given?
    end
  end
  require "capybara/minitest"
  require "minitest/spec"
  Minitest::Spec.include Capybara::DSL
  Minitest::Spec.include Capybara::Minitest::Assertions
  require "minitest/autorun"
end
