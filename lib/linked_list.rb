require_relative 'linked_list_item'

class LinkedList

  def get(nth_item)
    if nth_item == 0
      @first_item.payload
    else
      current_node = @first_item
      nth_item.times do
        current_node = current_node.next_item
      end
      current_node.payload
    end
  end

  def push(item)
    if @first_item.nil?
      @first_item = LinkedListItem.new(item)
      @last_item = @first_item
    else
      @last_item.next_item = LinkedListItem.new(item)
      @last_item = @last_item.next_item
    end
  end
end
