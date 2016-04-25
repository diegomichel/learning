require 'test/unit'

class QuizTest < Test::Unit::TestCase
  def test_class_of_Object
    assert_equal(Class, Object.class)
  end

  def test_superclass_of_Module
    assert_equal(Object, Module.superclass)
  end

  def test_class_of_Class
    assert_equal(Class, Class.class)
  end
end
