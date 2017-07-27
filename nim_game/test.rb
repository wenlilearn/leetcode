require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, can_win_nim(1))
    assert_equal(true, can_win_nim(2))
    assert_equal(true, can_win_nim(3))
    assert_equal(false, can_win_nim(4))
    assert_equal(true, can_win_nim(5))
    assert_equal(true, can_win_nim(6))
  end
end
