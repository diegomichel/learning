require 'test/unit'

class TestClass < Test::Unit::TestCase
  def test_class_as_object
    assert_equal(Class, String.class)
  end
end
