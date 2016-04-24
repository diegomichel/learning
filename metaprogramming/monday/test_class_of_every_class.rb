require 'test/unit'
class MyClass; end
class TestClassOfEveryClass < Test::Unit::TestCase
  def test_the_class_of_every_class_must_be_Class
    assert_equal(Class, String.class)
    assert_equal(Class, Bignum.class)
    assert_equal(Class, Integer.class)
    assert_equal(Class, Fixnum.class)
    assert_equal(Class, Float.class)
    assert_equal(Class, MyClass.class)
    assert_equal(Class, Class.class)
  end
end
