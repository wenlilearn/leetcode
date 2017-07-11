require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal("", longest_common_prefix([]))
    assert_equal("", longest_common_prefix(["", ""]))
    assert_equal("a", longest_common_prefix(["a", "a"]))
    assert_equal("abc", longest_common_prefix(["abc", "abcdef"]))
  end
end
