require 'test/unit'

class Banana
  def whoaim
    self.class.to_s
  end
end

class SelfTest < Test::Unit::TestCase
  def test_self
    assert_equal(SelfTest, self.class)
    assert_equal('Banana', Banana.new.whoaim)
  end
end
