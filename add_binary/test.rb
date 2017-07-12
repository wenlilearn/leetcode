require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert("0", add_binary("0", "0"))
    assert("1", add_binary("0", "1"))
    assert("100", add_binary("11", "1"))
  end
end
