require 'test/unit'

class TestOpeningClasses < Test::Unit::TestCase
  def setup
    load 'opening_classes.rb'
  end
  def test_x_and_y
    assert_equal('x', D.new.x)
    assert_equal('y', D.new.y)
  end
end
