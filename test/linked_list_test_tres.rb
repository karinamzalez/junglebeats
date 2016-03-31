require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"
require "./lib/jungle_beat"


class LinkedListTest < Minitest::Test

    def test_prepend_functional
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      result = list.prepend("dop")

      assert_equal "dop", result
      assert_equal "dop plop suu", list.to_string
      assert_equal 3, list.count
    end

    def test_insert_functional
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      result = list.insert(1, "woo")

      assert_equal "woo", result
      assert_equal "dop woo plop suu", list.to_string
      assert_equal 4, list.count
      require "pry"; binding.pry
    end


  end
