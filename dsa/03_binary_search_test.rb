require 'minitest/autorun'
require_relative '03_binary_search'

class BinarySearchTest < Minitest::Test
  def test_target_present_at_start
    assert_equal 0, BinarySearch.search([1, 2, 3, 4, 5], 1)
  end

  def test_target_present_in_middle
    assert_equal 2, BinarySearch.search([1, 2, 3, 4, 5], 3)
  end

  def test_target_present_at_end
    assert_equal 4, BinarySearch.search([1, 2, 3, 4, 5], 5)
  end

  def test_target_not_present
    assert_equal(-1, BinarySearch.search([1, 2, 3, 4, 5], 6))
  end

  def test_empty_array
    assert_equal(-1, BinarySearch.search([], 1))
  end

  def test_single_element_array_target_present
    assert_equal 0, BinarySearch.search([1], 1)
  end

  def test_single_element_array_target_not_present
    assert_equal(-1, BinarySearch.search([1], 2))
  end

  def test_large_array_target_present
    array = (1..10_000).to_a
    assert_equal 9999, BinarySearch.search(array, 10_000)
  end

  def test_large_array_target_not_present
    array = (1..10_000).to_a
    assert_equal(-1, BinarySearch.search(array, 10_001))
  end

  def test_array_with_negative_numbers_target_present
    assert_equal 1, BinarySearch.search([-3, -1, 0, 2, 4], -1)
  end

  def test_array_with_negative_numbers_target_not_present
    assert_equal(-1, BinarySearch.search([-3, -1, 0, 2, 4], 1))
  end
end
