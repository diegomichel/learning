require 'test/unit'
require 'delegate'

class Assistant
  def initialize(name)
    @name = name
  end

  def read_email
    "#{@name}: you have 5 new mails"
  end

  def check_schedule
    "#{@name}: looks good"
  end
end

class Manager < DelegateClass(Assistant)
  def initialize(name, assistant)
    @name = name
    super(assistant)
  end

  def attend_meeting
    "#{@name}: ok man"
  end
end

class ManagerAndAssistant < Test::Unit::TestCase
  def setup
    @assistant = Assistant.new("Assistant")
    @manager = Manager.new("Manager",@assistant)
  end

  def test_attend_meeting
    assert_equal('Manager: ok man', @manager.attend_meeting)
  end

  def test_read_email
    assert_equal('Assistant: you have 5 new mails', @manager.read_email)
  end

  def test_check_schedule
    assert_equal('Assistant: looks good', @manager.check_schedule)
  end
end
