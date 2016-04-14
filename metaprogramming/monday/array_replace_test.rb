require 'test/unit'
class TestArrayReplace < Test::Unit::TestCase
  def setup
    load 'array_replace.rb'
  end
  def test_array_replace
    assert_equal([1,2,3], [].replace([1,2,3]))
  end
end
