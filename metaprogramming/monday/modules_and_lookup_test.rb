module M
  def my_method
    'M#my_method()'
  end
end

class C
  include M
end

class D < C; end

require 'test/unit'

class TestModuleLookup < Test::Unit::TestCase
  def test_class_d
    assert_equal('M#my_method()', D.new.my_method)
  end
end
