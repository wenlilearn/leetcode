require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert(0 == remove_duplicates([]))
    assert(3 == remove_duplicates([1,2,3]))
    assert(2 == remove_duplicates([1,2,2]))
  end
end
