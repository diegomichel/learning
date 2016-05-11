require 'test/unit'
module Printable
  def print
    'wrong print'
  end

  def prepare_cover
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
  end

  def print
  end
end

class Book
  include Document
  include Printable
end

class TestBook < Test::Unit::TestCase
  #It will call the wrong print because Printable pushed himself
  #On the ancestor chain.
  def test_print_call
    assert_equal('wrong print', Book.new.print_to_screen)
  end

  #Here we can see here the last include taking precedence.
  def test_ancestors
    assert_equal([Book, Printable, Document, Object, Kernel, BasicObject], Book.ancestors)
  end

  # a fix would be to flip the includes
end
