require 'test/unit'
class TestWhatsAnObject < Test::Unit::TestCase
  def setup
    load 'my_class.rb'
    @obj = MyClass.new
  end
  def test_class
    assert_equal(MyClass, @obj.class)
  end
end
