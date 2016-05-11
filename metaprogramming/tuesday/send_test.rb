require 'test/unit'

class MyClass
  def double(n)
    n*2
  end
end

class TestSendMethod < Test::Unit::TestCase
  def test_double_with_dot_and_send
    assert_equal(MyClass.new.double(2), MyClass.new.send(:double, 2))
  end
end
