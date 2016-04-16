require 'test/unit'
class TestWhatsAnObject < Test::Unit::TestCase
  def setup
    load 'my_class.rb'
    @obj = MyClass.new
  end
  def test_class
    assert_equal(MyClass, @obj.class)
  end
  def test_instance_variables
    assert_equal(0, @obj.instance_variables.count)
    @obj.my_method
    assert_equal(:@v, @obj.instance_variables.first)
  end
end
