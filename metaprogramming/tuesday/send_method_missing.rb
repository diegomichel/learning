require 'test/unit'

class MyClass
end

class TestSendMethodMissing < Test::Unit::TestCase
  def test_call_method_missing_directly
    @test = MyClass.new
    begin
      @test.send :method_missing, :my_method
    rescue Exception => e
      assert_equal(NoMethodError, e.class)
    end
  end
end
