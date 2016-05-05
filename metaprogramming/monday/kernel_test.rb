require 'test/unit'

class TestKernel < Test::Unit::TestCase
  def test_injected_method_woot
    assert_equal('woot', woot)
  end
end
