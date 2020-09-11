class Node
  attr_accessor :data, :next_pointer
  def initialize(data, next_pointer = nil)
    @data = data
    @next_pointer = next_pointer
  end
end

class Linked
  def append(data)

    if @head.nil?
      @head = Node.new(data)
    end

    current = @head
    while current.next_pointer != nil
      current = current.next_pointer
    end

    current.next_pointer = Node.new(data)
  end
end

link = Linked.new

link.append(6)
link.append(10)
link.append(5)
link.append(1)

p link


