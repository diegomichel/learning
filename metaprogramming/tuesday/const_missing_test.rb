require 'test/unit'

def Object.const_missing(name)
  name.to_s.downcase.gsub(/_/, ' ')
end

class TestConstMissing < Test::Unit::TestCase
  def test_const_missing
    assert_equal('my constant', MY_CONSTANT)
  end
end
