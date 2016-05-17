require 'test/unit'

class MyClass
  private
  def my_private_method
    'hello!'
  end
end

class TestPrivacyMatters < Test::Unit::TestCase
  def test_private_with_send
    assert_equal('hello!', MyClass.new.send(:my_private_method))
  end
end
