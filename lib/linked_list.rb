require_relative 'linked_list_item'

class LinkedList
  attr_reader :size

  def initialize
    @size = 0
  end

  def get(index)
    raise IndexError if index < 0
    if index == 0
      @first_item.payload
    else
      current_node = @first_item
      index.times do
        raise IndexError if current_node.nil? or current_node.last?
        current_node = current_node.next_item
      end
      current_node.payload
    end
  end

  def last
    unless @last_item.nil?
      @last_item.payload
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
    @size += 1
    @last_item = new_item
  end

  # Naive Implementation
  # def size
  #   current_item = @first_item
  #   size = 0
  #   until current_item.nil?
  #     current_item = current_item.next_item
  #     size += 1
  #   end
  #   size
  # end
end
