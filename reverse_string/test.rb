require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal("", reverse_string(""))
    assert_equal("aba", reverse_string("aba"))
    assert_equal("abcd", reverse_string("dcba"))
  end
end
