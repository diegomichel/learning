require 'test/unit'
load 'introspection.rb'
class TestIntrospection < Test::Unit::TestCase
  def setup
    @greeting = Greeting.new("Hello")
  end

  def test_greeting_class
    assert_equal(Greeting, Greeting.new("Hello").class)
  end

  def test_instance_methods
    assert(@greeting.class.instance_methods(false).include?(:welcome))
  end

  def test_instance_variables
    assert(@greeting.instance_variables.include?(:@text))
  end
end
