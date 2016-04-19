require 'test/unit'

class TestClass < Test::Unit::TestCase
  def test_class_as_object
    assert_equal(Class, String.class)
  end
  def test_class_methods
    inherited = false
    assert_equal(true, Class.instance_methods(false).include?(:new))
    assert_equal(true, Class.instance_methods(false).include?(:superclass))
    assert_equal(true, Class.instance_methods(false).include?(:allocate))
  end
end
