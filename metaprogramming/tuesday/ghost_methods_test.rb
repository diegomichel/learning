require 'test/unit'

class MyClass
  def method_missing(name, *args, &block)
    "#{name} with #{args.count} and #{block.call}"
  end
end
class GhostMethodsTest < Test::Unit::TestCase
  def test_ghosts
    assert_equal('test with 3 and x', MyClass.new.test(:test, 1, 2) do 'x' end)
  end
end
