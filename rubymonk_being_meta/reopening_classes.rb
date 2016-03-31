class Array
  def foldl(method)
    inject {|result, i| result ? result.send(method, i) : i}
  end
end

puts [1000.0, 200.0, 50.0].foldl("+")
puts [1000.0, 200.0, 50.0].foldl("-")
puts [1000.0, 200.0, 50.0].foldl("*")
puts ["Hello ", "World", "!"].foldl("concat")
