class Node
  attr_accessor :data, :next_pointer
  def initialize(data)
    @data = data
    @next_pointer = nil
  end
end

class Linked

  attr_reader :head, :length
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
      @length = 0
    end

    current = @head
    while current.next_pointer != nil
      current = current.next_pointer
    end

    current.next_pointer = Node.new(data)
    @length += 1
  end


  def pre(data)
    current = Node.new(data)
    if @head.nil?
      @head = current
    else
      current.next_pointer = @head
    end
    @head = current
  end


  def insert(position, value)

    current = Node.new(value)
    # if list is empty, the head is the new node
    if @head.nil?
      @head = current
    end

    # if position is 0, we insert in the first position
    if position.zero?
      current.next_pointer = @head
      @head = current
    else
      idx = position - 1
      prev = @head
      current = @head
      # insert at desired position if index is greater than 0

      # move the
      # loop to the desired position before where you wish to insert
      idx.times do
        prev = current.next_pointer
      end

      #  loop to the desired position before where you wish to insert
      # position.times do
      #   current = current.next_pointer
      # end

      #  create the node you wish to insert
      new_node = Node.new(value)
      after = prev.next_pointer

      #  point node before current to new node
      prev.next_pointer = new_node

      #  point new node to the old current node
      new_node.next_pointer = after

    end
    # @length += 1
  end
end

link = Linked.new

link.append(6)
link.append(10)
# link.append(5)
# link.append(1)
# link.append(21)
link.append(14)
# link.append(4)
# link.pre('c')
# link.pre('E')
# link.pre('a')
# link.pre(100)
link.insert(3, 'y')
link.insert(1, 'frodo')

p link


