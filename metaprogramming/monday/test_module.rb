require 'test/unit'

class TestModule < Test::Unit::TestCase
  def setup
    load 'module.rb'
    @my_class = X::MyClass.new
  end
  def test_module_call
    assert_equal(X::MyClass, @my_class.class)
  end
end
