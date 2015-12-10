gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'jungle_beat'

class NodeTest < Minitest::Test


  def test_new_node_is_added_to_the_end_of_list
    # skip
    new_linked_list = JungleBeat.new("ba")
    new_linked_list.append("ca")
    assert_equal "ca", new_linked_list.tail.song_note
  end

  def test_new_node_is_added_to_the_beginning_of_list
    # skip
    new_linked_list = JungleBeat.new("da")
    new_linked_list.prepend("la")
    assert_equal "la", new_linked_list.head.song_note
    assert_equal "da", new_linked_list.tail.song_note
  end

  def test_new_node_is_inserted_at_arbitrary_postion
    # skip
    new_linked_list = JungleBeat.new("da ba")
    new                                    _linked_list.insert(1, "la")
    assert_equal "da la ba", new_linked_list.all
  end

  def test_whether_given_value_is_in_list
    # skip
    new_linked_list = JungleBeat.new("da ba")
    assert_equal true, new_linked_list.includes?("ba")
  end

  def test_pop_out_element_from_end_of_list
    # skip
    new_linked_list = JungleBeat.new("da ba za")
    new_linked_list.pop
    assert_equal "da ba", new_linked_list.all
  end

  def test_count_the_number_of_elements_in_the_list
    # skip
    new_linked_list = JungleBeat.new("da ba za")
    assert_equal 3, new_linked_list.count
  end

  def test_return_head_value
    # skip
    new_linked_list = JungleBeat.new("da ba za")
    assert_equal "da", new_linked_list.head.song_note
  end

  def test_return_tail_value
    # skip
    new_linked_list = JungleBeat.new("da ba za")
    assert_equal "za", new_linked_list.tail.song_note
  end

  def test_find_the_number_position_of_a_value
    # skip
    new_linked_list = JungleBeat.new("da ka wa ba za la")
    assert_equal 3, new_linked_list.number_in_line("ba")
  end

  def test_find_the_value_at_a_numeric_position
    # skip
    new_linked_list = JungleBeat.new("da ka wa ba za la")
    assert_equal "ba", new_linked_list.find(3)
  end

end
