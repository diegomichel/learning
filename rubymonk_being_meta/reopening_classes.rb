class Array #We are opening the existing Array class
  def foldl(method) #We are defining a new method on the class
    #Inject combines all the elements of the array
    #result is an acumulator that stores the last return value of
    #the iteration.
    #the param i of the block is each element of the array.
    #Also the acumulator is returned at the very end.
    inject {|result, i| result ? result.send(method, i) : i}
    #So first check if result is defined, if not then the next iteration
    #result will have the value of i.
    #now result is defined, so we call method on it, and as a param the next
    #value of the array, and so on, until the end...
  end
end

puts [1000.0, 200.0, 50.0].foldl("+")
puts [1000.0, 200.0, 50.0].foldl("-")
puts [1000.0, 200.0, 50.0].foldl("*")
puts ["Hello ", "World", "!"].foldl("concat")
