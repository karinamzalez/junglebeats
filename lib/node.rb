class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data=nil, next_node=nil)
    @data = data
    @next_node = next_node
  end

  # def add_next_node(data)
  #   @next_node = data
  # end


end
