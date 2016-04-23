require 'test/unit'

class TestConstats < Test::Unit::TestCase
  def setup
    load 'my_module.rb'
  end

  def test_my_constant
    assert_equal('Outer Constant', MyModule::MyConstant)
    assert_equal('Inner Constant', MyModule::MyClass::MyConstant)
  end
  def test_change_constant
    #constants value change be changed
    MyModule = 'Hello World'
    assert_equal('Hello World', MyModule)
  end
end
