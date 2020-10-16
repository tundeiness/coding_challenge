class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val 
    @next = nil
  end
end


class Linkedlist
    def initialize
        @length = 0
        @head = nil
        @tail = nil
    end

    def unshift
        if @head.nil?
            'empty list'
        else
            curr = @head.next
            @head = curr
            @length -= 1
        end
    end

    def prepend(val)
        new_node = Node.new(val)
        if @head.nil?
            @head = new_node
            @tail = @head
        else
            new_node.next = @head
            @head = new_node
            @length += 1
        end
    end

    def get(idx)
        count = 0
        return nil if idx < 0 || idx >= @length

        curr = @head
        while curr.next
          return curr if idx == count

          curr = curr.next
          count += 1
        end
    end


    def append(val)
        new_node = Node.new(val)
        if @head.nil? 
            @head = new_node
            @tail = @head
        else 
            @tail.next = new_node
            @tail = new_node
            @length += 1
        end
    end


    def pop
        if @head.nil?
            'empty list'
        else
            curr = @head
            while curr.next
                prev = curr
                curr = curr.next
            end
            @tail = prev
            @tail.next = nil
            @length -= 1
        end
    end

    def insert(idx, val)
        return false if idx.negative? || idx > @length

        append(val) if idx == @length

        prepend(val) if idx.zero?

        node = get(idx - 1)
        news = Node.new(val)
        aft = get(idx)

        prev = news
        node.next = prev
        prev.next = aft
        @length += 1
        true
    end
end

list = Linkedlist.new

# list.prepend('vortex')
# list.prepend('texina')
# list.prepend(10)
# list.prepend('wulrd')
# list.prepend(20)
list.append('end')
list.append('new end')
list.append('another new end')
list.append('more new end')

# p list.get(2)

list.insert(2, 'warri')
list.insert(1, 'testing')

# list.pop
# list.pop

# list.unshift
# list.unshift

p list
