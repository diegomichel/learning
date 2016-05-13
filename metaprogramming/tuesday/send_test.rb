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

  def test_send_with_symbol_and_string
    object = MyClass.new
    assert_equal(object.send(:double, 3), object.send('double', 3))
  end
end
