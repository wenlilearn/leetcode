require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal("bc", reverse_vowels("bc"))
    assert_equal("abc", reverse_vowels("abc"))
    assert_equal("hello", reverse_vowels("holle"))
    assert_equal("aA", reverse_vowels("Aa"))
  end
end
