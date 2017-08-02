require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, repeated_substring_pattern("abab"))
    assert_equal(false, repeated_substring_pattern("aba"))
    assert_equal(true, repeated_substring_pattern("abcabcabcabc"))
  end
end
