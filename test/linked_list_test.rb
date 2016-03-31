require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"


class LinkedListTest < Minitest::Test

  def test_default_head_nil
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_append_returns_value
    list = LinkedList.new
    result = list.append("doop")

    assert_equal "doop", result
  end

  def test_append_functional
    list = LinkedList.new
    list.append("doop")
    result = list.append("pood")

    assert_equal "pood", result
  end

   def test_count_functional
     list = LinkedList.new
     result = list.count
       list.append("doop")
     result2 = list.count


     assert_equal 0, result
     assert_equal 1, result2
   end

   def test_to_string
     list = LinkedList.new
       list.append("doop")
     result2 = list.to_string

     assert_equal "doop", result2
   end


end
