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
  def test_super_class
    assert_equal(Object, String.superclass)
    assert_equal(BasicObject, Object.superclass)
    assert_equal(nil, BasicObject.superclass)
    assert_equal(Module, Class.superclass)
    assert_equal(Object, Module.superclass)
  end
end
