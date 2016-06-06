require 'test/unit'

class TestConstMissing < Test::Unit::TestCase
  def test_const_missing
    assert_equal('my constant', MY_CONSTANT)
  end
end
