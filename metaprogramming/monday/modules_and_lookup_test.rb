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

  def test_ancesorts_class_d
    assert_equal([D, C, M, Object, Kernel, BasicObject], D.ancestors)
  end

  def test_super_class_ignores_m
    #So superclass isnt used to lookup methods then
    #I think a better choice will be ancestors.
    assert_equal(D.superclass, C)
    assert_equal(C.superclass, Object)
  end
end
