require 'minitest/autorun'


class TestPerson < MiniTest::Unit::TestCase
    
  def test_an_array_is_created_empty
    array = Array.new()
    assert_equal(0, array.size)
    assert(array.empty?)
  end
  
  def test_an_array_with_1_element_has_a_size_of_1
    array = Array.new()
    array << "item"
    assert_equal(1, array.size)
    refute(array.empty?)
    assert_equal("item", array[0])
    assert_equal("item", array.first)
  end

end