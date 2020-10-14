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

 def get 
 end 

 def append(data)
   new_node = Node.new(data)
   if @head.nil?
     @head = new_node
     @tail = @head
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

 def traverse
  curr = @head
  while curr
    p curr.data
    curr = curr.next
  end
 end

 def pop
   return 'undefined' if @head.nil?

   curr = @head
   while curr.next
     prev = curr
     curr = curr.next
   end
    prev.next = nil
   @tail = prev
   @length -= 1
   if @length.zero?
     @head = nil
     @tail = nil
   end
 end

 def shift
  if @head.nil?
    'empty'
  else
    curr = @head.next
    @head = curr
    @length -= 1
  end
 end

 def insert(idx, val)
  if idx.zero?
    prepend(val)
  elsif idx == @length
    append(val)
  elsif idx > @length
    'out of range'
  else
    curr = @head 
    while curr.next
      prev = curr
    end 
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

# new_list.prepend('test')
# new_list.prepend('another_test')
# new_list.traverse
# new_list.pop
new_list.shift

# new_list.insert(3, 4)
p new_list
