require 'test/unit'
class TestMoney < Test::Unit::TestCase
  def setup
    load 'money.rb'
  end

  def test_fixnum_to_money
    cents = 9999
    assert_equal(99.99, cents.to_money.dollars.to_f)
  end
end
