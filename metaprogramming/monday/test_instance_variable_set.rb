require 'test/unit'

class MyClass; end
class TestInstanceVariableSet < Test::Unit::TestCase
  def setup
    @obj1 = MyClass.new
  end

  def test_instance_variable_set
    @obj1.instance_variable_set("@x", 10)
    assert_equal(10, @obj1.instance_variable_get("@x"))
  end
end
