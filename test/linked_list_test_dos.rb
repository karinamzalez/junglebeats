require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"


class LinkedListTest < Minitest::Test


    def test_default_head_nil
      list = LinkedList.new

      assert_equal nil, list.head
      #require "pry"; binding.pry
      #type in list into pry for explicit list info
    end

    def test_append_adds_value
      list = LinkedList.new
      result = list.append("doop")

      assert_equal "doop", result
      assert_equal nil, list.head.next_node
      # require "pry"; binding.pry
      #type in list into pry for list
      #type in list.head into pry for head
    end

    def test_append_adds_multiple_values
      list = LinkedList.new
      list.append("doop")
      result = list.append("deep")

      assert_equal "deep", result
      #require "pry"; binding.pry
      #type in head.next_node for explicit node info
    end

    def test_count_multiple_nodes
      list = LinkedList.new
      list.append("doop")
      result = list.append("deep")

      assert_equal 2, list.count
    end

    def test_to_string_functional
      list = LinkedList.new
      list.append("doop")
      result = list.append("deep")

      assert_equal "doop deep", list.to_string
    end


    end
