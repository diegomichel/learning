require 'test/unit'

class MyClass
  define_method :my_method do |arg|
    arg * 2
  end
end

class TestDefineMethod < Test::Unit::TestCase
  def test_my_method
    assert_equal(6, MyClass.new.my_method(3))
  end
end
