require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal("a", find_the_difference("", "a"))
    assert_equal("a", find_the_difference("a", "aa"))
    assert_equal("e", find_the_difference("abcd", "abcde"))
  end
end
