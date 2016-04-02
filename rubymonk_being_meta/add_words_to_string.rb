#Adds method words to class string, so it returns and array of the words
#of the string.
class String
  def words
    split(" ")
  end
end

"Hello world Brotha".words
