require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
  return if head.nil? || head.next_node.nil?

    current = head
    prev = nil

    while current
      next_node = current.next_node
      current.next_node = prev
      current.prev_node = next_node

      prev = current
      current = next_node
    end

    self.head, self.tail = tail, head
  end
end
