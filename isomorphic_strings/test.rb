require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, is_isomorphic("", ""))

    assert_equal(true, is_isomorphic("abc", "def"))
    assert_equal(false, is_isomorphic("bar", "foo"))
    assert_equal(false, is_isomorphic("foo", "bar"))
    assert_equal(true, is_isomorphic("ab", "ca"))
  end
end
