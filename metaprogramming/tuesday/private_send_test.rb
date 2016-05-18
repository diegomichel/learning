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
  def test_private_method_with_public_send
    begin
      response = MyClass.new.public_send(:my_private_method)
    rescue Exception => e
      assert_equal(NoMethodError, e.class)
    end
  end
end
