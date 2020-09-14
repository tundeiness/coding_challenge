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
    # @length = 0

    if @head.nil?
      current = Node.new(value)
      @head = current
    end


    if position.zero?
      node = Node.new(value, @head)
      @head = node
    else
      current = @head
      prev = @head
      idx = position - 1
      idx.times do
        prev = current.next_pointer
      end

      position.times do
        current = current.next_pointer
      end
      new_node = Node.new(value)
      after_current = prev.next_pointer
      prev.next_pointer = new_node
      new_node.next_pointer = after_current

    end
    # @length += 1
  end
end

link = Linked.new

link.append(6)
# link.append(10)
# link.append(5)
# link.append(1)
# link.append(21)
link.append(14)
link.append(4)
# link.pre('c')
# link.pre('E')
# link.pre('a')
# link.pre(100)
link.insert(3, 'y')
link.insert(1, 'frodo')

p link


