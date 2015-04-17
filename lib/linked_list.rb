require_relative 'linked_list_item'

class LinkedList

  def get(index)
    if index == 0
      @first_item.payload
    else
      current_node = @first_item
      index.times do
        current_node = current_node.next_item
      end
      current_node.payload
    end
  end

  def push(payload)
    new_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = new_item
    else

      # Eliza's "Naive" Implementation:
      # last_item = @first_item
      # until last_item.last? # i.e. last_item.next_item.nil?
      #   last_item = last_item.next_item
      # end
      # last_item.next_item = new_item

      # Jurnell's Implementation:
      @last_item.next_item = new_item
    end
    @last_item = new_item
  end
end
