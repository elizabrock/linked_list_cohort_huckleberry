require_relative 'linked_list_item'

class LinkedList
  attr_reader :size

  def initialize(*args)
    @size = 0
    args.each do |payload|
      push(payload)
    end
  end

  def get_item(index)
    raise IndexError if index < 0
    if index == 0
      @first_item
    else
      current_node = @first_item
      index.times do
        raise IndexError if current_node.nil? or current_node.last?
        current_node = current_node.next_item
      end
      current_node
    end
  end

  def get(index)
    get_item(index).payload
  end
  alias [] get

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
      @last_item.next_item = new_item
    end
    @size += 1
    @last_item = new_item
  end

  def to_s
    str = "| "
    current_item = @first_item
    until current_item.nil?
      str << current_item.payload
      punctuation = current_item.last? ? " " : ", "
      str << punctuation
      current_item = current_item.next_item
    end
    str << "|"
    str
  end
end
