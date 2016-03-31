require "minitest/autorun"
require "minitest/pride"
require "./lib/node"
require "pry"
require "pry-nav"


class NodeTest < Minitest::Test

  def test_is_default_data_nil
    node = Node.new

    assert_equal nil, node.data
  end

  def test_data_can_be_passed_to_node
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_node_with_data_value_has_nil_next_node
    node = Node.new("plop")

    assert_equal nil, node.next_node
  end

  def test_able_to_add_next_node
    node = Node.new("plop")
    node.add_next_node("boom")

    assert_equal "boom", node.next_node
  end

end
