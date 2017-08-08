require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, is_subsequence("abc", "abbbbbccccddefg"))
    assert_equal(false, is_subsequence("abc", "defghij"))
    assert_equal(true, is_subsequence("abc", "ahbgdc"))
  end
end
