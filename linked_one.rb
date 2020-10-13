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
   @length = 0
   @head = nil
   @tail = nil
 end

 def append(data)
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

 def prepend(data)
  new_node = Node.new(data)
  if @head.nil?
    @head = new_node
    @tail = new_node
  else 
    new_node.next = @head
    @head = new_node
    @length += 1
  end 
 end 
end


new_list = Linkedlist.new
new_list.append(5)
new_list.append(10)
# new_list.push(11)
new_list.append('vortex')
# new_list.push(2)
# new_list.push(10)
new_list.append(21)
new_list.append('trials')

new_list.prepend('test')
new_list.prepend('another_test')


p new_list
