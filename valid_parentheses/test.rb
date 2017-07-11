require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple
    assert_equal(true, is_valid(""))
    assert_equal(true, is_valid("(())"))
    assert_equal(false, is_valid("([)]"))
    assert_equal(false, is_valid("]"))
    assert_equal(false, is_valid("["))
  end
end
