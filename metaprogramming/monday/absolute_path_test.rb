require 'test/unit'

class AbsolutePathTest < Test::Unit::TestCase
  def setup
    load 'absolute_path.rb'
  end
  def test_absolute_path
    assert_equal('hai', AbsolutePath::MyClass.new.get_constant)
  end
  def test_constants
    assert_equal([:MyClass, :Y], AbsolutePath.constants)
  end
end
