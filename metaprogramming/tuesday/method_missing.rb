class MyClass
  def initialize
    @data = {}
  end

  def method_missing(name, *args)
    binding.pry
    dato = name.to_s
    if dato =~ /=$/
      @data[dato.chop] = args[0]
    else
      @data[dato]
    end
  end
end

# @my_object = MyClass.new
# @my_object.nombre=("Diego Michel")
