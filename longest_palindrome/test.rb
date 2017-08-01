require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, longest_palindrome(""))
    assert_equal(1, longest_palindrome("Aa"))
    assert_equal(1, longest_palindrome("a"))
    assert_equal(7, longest_palindrome("abccccdd"))
    assert_equal(3, longest_palindrome("aaa"))
    assert_equal(7, longest_palindrome("aaabaaaa"))
  end
end
