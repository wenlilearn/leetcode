require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(-1, first_uniq_char(""))
    assert_equal(-1, first_uniq_char("aabbcc"))
    assert_equal(0, first_uniq_char("leetcode"))
    assert_equal(2, first_uniq_char("loveleetcode"))
  end
end
