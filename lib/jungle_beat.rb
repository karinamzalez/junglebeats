require_relative "linked_list"

class JungleBeat < LinkedList

  attr_accessor :list, :voice, :rate

  def initialize
    @list = LinkedList.new
    @voice = "Boing"
    @rate = 500
  end

  def append(data)
    array_data = data.split
    array_data.each do |data|
      @list.append(data)
    end
    data
  end

  def count
    @list.count
  end

  def play
    string_list = @list.to_string
    `say -r #{@rate} -v #{@voice} #{string_list}`
  end

end
