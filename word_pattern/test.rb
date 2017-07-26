require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, word_pattern("", ""))
    assert_equal(true, word_pattern("aaa", "test test test"))
    assert_equal(false, word_pattern("aaa", "lol"))
    assert_equal(false, word_pattern("abc", "test test test"))
  end
end
