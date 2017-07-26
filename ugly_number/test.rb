require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(true, is_ugly(1))
    assert_equal(true, is_ugly(2))
    assert_equal(true, is_ugly(3))
    assert_equal(true, is_ugly(4))
    assert_equal(false, is_ugly(-2147483648))
  end
end
