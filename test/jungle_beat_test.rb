require "minitest/autorun"
require "minitest/pride"
require "./lib/jungle_beat"

class JungleBeatTest < Minitest::Test

  def teas_head_functional
    jb = JungleBeat.new
    require "pry"; binding.pry
    assert_equal nil, jb.list.head
  end

  def test_append_functional
    jb = JungleBeat.new
    result = jb.append("deep doo ditt")

    assert_equal "deep doo ditt", result
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_append_multiple_functional
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    result = jb.append("woo hoo shu")

    assert_equal 6, jb.count
  end

  # def test_say_method_funtional
  #   jb = JungleBeat.new
  #   jb.append("deep doo ditt")
  #   result = jb
  #
  #   assert result.play
  # end

  def test_changes_functional
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.voice = "Alice"
    jb.rate = 100

    jb.play
  end
end
