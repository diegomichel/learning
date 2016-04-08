@test = "hi"
def get_binding
  binding
end
class Test
  def initialize
    @test = "Hey"
  end
  def get_binding
    binding
  end
end
puts eval("puts @test", get_binding)
puts eval("puts @test", Test.new.get_binding)
