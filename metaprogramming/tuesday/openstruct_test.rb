require 'test/unit'

class MyOpenStruct
  def initialize
    @data = {}
  end

  def method_missing(name, *args)
    name = name.to_s
    if name =~ /=$/
      @data[name.chop] = args[0]
    else
      @data[name]
    end
  end
end
class TestMyOpenStruct < Test::Unit::TestCase
  def setup
    @icecream = MyOpenStruct.new
    @icecream.flavor = "vanilla"
  end

  def test_set_value
    assert_equal('vanilla',@icecream.flavor)
  end
end
