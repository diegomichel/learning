require 'test/unit'

class TestAncestors < Test::Unit::TestCase
  def test_ancestors_of_class
    assert_equal([Class, Module, Object, Kernel, BasicObject], Class.ancestors)
  end
end
