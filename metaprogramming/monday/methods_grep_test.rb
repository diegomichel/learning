require 'test/unit'

class TestMethodsGrep < Test::Unit::TestCase
  def setup
    load 'methods_grep.rb'
  end

  def test_methods_grep
    assert_equal(3, "".methods.grep(/^xxx/).count)
  end
end
