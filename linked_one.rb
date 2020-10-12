class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end



# new_node.next = Node.new(7)
# new_node.next.next = Node.new(10)
# new_node.next.next.next = Node.new(12)
# p new_node

class Linkedlist
  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def push(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next = new_node
      @tail = new_node
      @length += 1
    end
  end
end


new_list = Linkedlist.new
new_list.push(5)
new_list.push(10)
new_list.push(11)
new_list.push('vortex')
new_list.push(2)
new_list.push(10)
new_list.push(21)


p new_list
