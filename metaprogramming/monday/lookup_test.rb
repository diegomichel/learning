require 'test/unit'

class TestLookup < Test::Unit::TestCase
  def setup
    load 'lookup.rb'
  end

  def test_lookup
    #The method doesn't exists on Lookup but on Lookup2
    #Following the right-up rule, ruby will first check
    #the class Lookup for any method named my_method
    #If doesn't exist it will look into the superclass
    #until it finds it or reaches the BasicObject class
    assert_equal(true, Lookup.new.my_method)
  end
end
