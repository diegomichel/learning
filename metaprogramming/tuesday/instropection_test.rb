require 'test/unit'
require 'pry'

class StringCloneMethodNames
  def self.define_all
    String.instance_methods.each do |m|
      define(m)
    end
  end

  def self.define(name)
    define_method name do |name|
      "You have called " + name
    end
  end
  define_all
end

class TestStringCloneMethodNames < Test::Unit::TestCase
  def test_string_clone
    assert_equal(String.instance_methods, StringCloneMethodNames.instance_methods)
  end

  def test_fake_methods
    assert_equal('You have called enum_for', StringCloneMethodNames.new.send('enum_for'))
  end
end
