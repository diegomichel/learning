require 'test/unit'

class OpenClassTest < Test::Unit::TestCase
  def setup
    @my_string = "/--{}+)HOLA!@#^&$"
  end

  def test_to_alphanumeric_method
    assert_equal("HOLA", @my_string.to_alphanumeric)
  end
end
