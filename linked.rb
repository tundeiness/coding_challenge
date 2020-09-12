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

  def prepend(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      node.next_pointer = @head
    end
    @head = node
  end
end

link = Linked.new

link.append(6)
link.append(10)
# link.append(5)
# link.append(1)
# link.append(21)
link.append(14)
link.prepend('c')
link.prepend('E')
link.prepend('a')

p link


