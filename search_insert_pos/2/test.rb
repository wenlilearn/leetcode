require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert(0 == search_insert([], 0))
    assert(0 == search_insert([1,2,3], -1))
    assert 3 == search_insert([1,2,3], 100)

    assert 2 == search_insert([1,2,3,4], 3)

    assert 1 == search_insert([1,3], 3)
    assert 1 == search_insert([1,3,5], 2)
  end
end
