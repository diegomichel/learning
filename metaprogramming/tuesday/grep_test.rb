require 'test/unit'

class MyClass
  def my_method_1
  end

  def my_method_2
  end

  def uber_method
  end

  def uber_method_2
  end
end

class TestGrep < Test::Unit::TestCase
  def test_grep_1
    assert_equal(2, MyClass.instance_methods.grep(/^my(.*)/).count)
  end
  def test_grep_2
    assert_equal(2, MyClass.instance_methods.grep(/^uber(.*)/).count)
  end
end
