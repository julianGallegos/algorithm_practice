class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end
end

class LinkedList
  def self.print_forward(node)
    while node != nil
      puts node.value
      node = node.next
    end
  end

  def self.reverse(node)
    current = node
    first = nil
    second = nil
    # until we have 'fallen off' the end of the list
    while current != nil
      # copy a pointer to the next element 
      # before we overwrite current.next
      second = current.next
      # reverse the 'next' pointer
      current.next = first
      # step forward in the list
      first = current
      current = second
    end
    first
  end  

  def self.delete_node(node_to_delete)
    node = node_to_delete

    if node.next
      node_to_delete.value = node.next.value
      node_to_delete.next = node.next.next
    else
      raise Exception("Cannot delete the last node with this method!")
    end
  end

  def self.print_reverse(node)
    print_forward(reverse(node))
  end
end


node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)

node1.next = node2
node2.next = node3
node3.next = node4

LinkedList.print_forward(node1)