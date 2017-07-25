require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    # assert_equal(true, is_palindrome(nil))
    # assert_equal(true, is_palindrome(ListNode.new(1)))
    # assert_equal(false, is_palindrome(ListNode.new(1, ListNode.new(2))))
    assert_equal(true, is_palindrome(ListNode.new(1, ListNode.new(2, ListNode.new(1)))))
  end
end
