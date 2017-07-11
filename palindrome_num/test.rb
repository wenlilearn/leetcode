require_relative "main.rb"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
	assert_equal(true, is_palindrome(131))
	assert_equal(false, is_palindrome(123))
	assert_equal(false, is_palindrome(-1))
  end
end
