require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, is_palindrome(""))
    assert_equal(true, is_palindrome("a"))
    assert_equal(true, is_palindrome("Adoda"))
    assert_equal(true, is_palindrome("A man, a plan, a canal: Panama"))
    assert_equal(false, is_palindrome("race a car"))
    assert_equal(false, is_palindrome("0P"))
  end
end
