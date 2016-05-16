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
end
