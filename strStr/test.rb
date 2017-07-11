require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert(-1 == str_str("", "abc"))
    assert(-1 == str_str("abcdef", ""))

    assert(0 == str_str("abc", "abc"))
    assert(1 == str_str("aabc", "abc"))
    
  end
end
