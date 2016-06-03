class MyClass
  def initialize
    @data = {}
  end

  def respond_to?(name)
    true
  end

  def method_missing(name, *args)
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
