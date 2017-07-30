require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, can_construct("", "a"))
    assert_equal(false, can_construct("a", ""))
    assert_equal(false, can_construct("a", "b"))
    assert_equal(false, can_construct("aa", "ab"))
    assert_equal(true, can_construct("aa", "aab"))
  end
end
