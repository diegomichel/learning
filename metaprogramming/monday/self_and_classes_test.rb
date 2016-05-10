require 'test/unit'

class MyClass
  puts self # Classes are objects too!...so self is the class Itself!.
  def whoiam
    # this self is the object instantiated from the class
    self.to_s
  end
end


class TestSelfInsideClass < Test::Unit::TestCase
  def test_self_of_class
    assert_not_equal("MyClass", MyClass.new.whoiam)
  end
end
