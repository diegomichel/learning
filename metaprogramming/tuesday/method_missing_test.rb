require 'test/unit'

class TestMethodMissing < Test::Unit::TestCase
  def setup
    load 'method_missing.rb'
    @obj = MyClass.new
    @obj.randomstring123 = "hola"
  end

  def test_random_methods
    assert_equal('hola', @obj.randomstring123)
  end

  # We know it will respond, but respond_to says it doesn't...
  # We have to fix this in another task :)
  def test_respond_to_fails
    assert_equal(true, @obj.respond_to?(:randomstring123))
  end
end
