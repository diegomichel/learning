module AbsolutePath
  Y = 'hai'
  class MyClass
    def get_constant
      ::AbsolutePath::Y
    end
  end
end
