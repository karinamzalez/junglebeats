require_relative "node"

class LinkedList
  attr_reader :head, :counter, :my_array

  def initialize
    @counter = 0
    @head = nil
    @my_string = ""
  end

  def append(data)
    if @head
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
      current_node.next_node.data
    else
      @head = Node.new(data)
      @head.data
    end
  end


  def count

    if @head
      current_node = @head
      @counter += 1
      # require "pry"; binding.pry
      until current_node.next_node.nil?
        current_node = current_node.next_node
        @counter += 1
      end
      @counter
    else
      @counter
    end
  end

  def prepend(data)
    @head = Node.new(data, @head)
    @head.data
  end

  def insert(index, data)
    current_node = @head
    (index - 1).times do
      current_node = current_node.next_node
    end
    new_node = Node.new(data, current_node.next_node)
    current_node.next_node = new_node
    new_node.data
  end


    def to_string
      if @head
        current_node = @head
        @my_string <<  "#{current_node.data}"
        # require "pry"; binding.pry
        until current_node.next_node.nil?
          current_node = current_node.next_node
          @my_string << " #{current_node.data}"
        end
        @my_string
      else
        @my_string
      end
    end


    def find(index, amount)
      found_sounds = []
      current_node = @head
      index.times do
        current_node = current_node.next_node
      end
      amount.times do
        found_sounds << current_node.data
        current_node = current_node.next_node
      end
        found_sounds.join(" ")
    end

    def includes?(data)
      current_node = @head
      until current_node.next_node.nil?
        return true if current_node.data == data
        current_node = current_node.next_node
      end
      false
    end

    def pop
      current_node = @head
      until current_node.next_node.next_node.nil?
        current_node = current_node.next_node
      end
      deleted_data = current_node.next_node.data
      current_node.next_node = nil
      return deleted_data
    end


  end
  #iteration 5 uses .split!
