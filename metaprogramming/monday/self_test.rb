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

# How can I test this?
# We are always inside of an object
puts "Test pass we are inside main on irb" if 'main' == self.to_s

puts "The main object is an instance of Object" if Object == self.class
