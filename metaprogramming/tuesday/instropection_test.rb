require 'test/unit'
require 'pry'

class StringCloneMethodNames
  def self.define_all
    binding.pry
    String.instance_methods.each do |m|
      define(m)
    end
  end

  def define(name)
    define_method name do |name|
      puts "You have called " + name
    end
  end
  define_all
end

class TestStringCloneMethodNames < Test::Unit::TestCase
  def test_string_clone
    assert_equal(String.instance_methods.count, StringCloneMethodNames.instance_methods.count)
  end
end
