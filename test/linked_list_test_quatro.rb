require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_find_includes_functionality
    list = LinkedList.new
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")


    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_
    list = LinkedList.new
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")

    assert_equal true, list.includes?("deep")
    assert_equal false, list.includes?("dep")
  end


  def test_pop_functionality
    list = LinkedList.new
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    result = list.pop

    assert_equal "blop", result
    assert_equal "shu", list.pop
  end

end
