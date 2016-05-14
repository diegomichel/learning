require 'test/unit'

class TestSymbols < Test::Unit::TestCase
  def test_symbols_vs_strings
    #Symbols are inmutable
    assert_equal(:my_symbol, 'my_symbol'.to_sym)
    assert_equal('my_symbol', :my_symbol.to_s)
    #Symbols with the same content are exactly the same object.
    assert_equal(:my_symbol.object_id, :my_symbol.object_id)
    #Strings with same content are different objects.
    assert_not_equal('my_symbol'.object_id, 'my_symbol'.object_id)
  end
end
