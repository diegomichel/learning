require 'test/unit'
class MyClass
  def method_missing(method_name, *args)
    args.count
  end
end

class MoreMethodMissingTest < Test::Unit::TestCase
  def test_arg_count
    assert_equal(2, MyClass.new.test(1,2))
    assert_equal(1, MyClass.new.test('a'))
  end
end
