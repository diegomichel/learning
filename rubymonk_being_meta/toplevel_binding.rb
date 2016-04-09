# Top level binding
# TOPLEVEL_BINDING creates methods on the main scope from inside a class.
class RubyMonk
  def self.create_book(book)
    eval("def #{book}; 'created'; end", TOPLEVEL_BINDING)
  end
end

RubyMonk.create_book :regular_expressions

puts regular_expressions
