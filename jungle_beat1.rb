class Node
  attr_accessor :song_note, :link #makes attributes as methods?

  def initialize(song_note, link= nil)
    @song_note = song_note
    @link = link #who it is linked to
  end
end

  # t = LinkedList.new("la")
  # puts t.note #accessing attributes
  # puts t.link
  # t #<Train @head=#<TrainCar name; "la", linked_car: #<TrainCar name: "ba", linked_car: #<TrainCar name: "da", linked_car: nil>>>

class LinkedList
  attr_accessor :head

  def initialize(song_note = nil)
    @head = nil
    @tail = nil
    if song_note
      append(song_note)
    end
  end

  def append(song_note)
    new_node = temporary_head
    while new_linked_list.link != nil do
      new_node = new_linked_list.link
    end
    temporary_head = tail

    # temporary_head
    if head == nil #doesn't need to be instance bc just reading not changing
       @head = Node.new(song_note)
    else
      next_node = Node.new(song_note)
      head.link = next_node #this code is wrong
    end

    while next_node == true do
      tail = Node.new(song_note)
    end
  end


   def prepend(song_note)
     temporary_head = @head
     @head = Node.new(song_note)
     @head.link = temporary_head #links former head to new head
      temporary_head
   end

   def arbitrary(song_note, place)
     count = 0
     if head == nil #doesn't need to be instance bc just reading not changing
        @head = Node.new(song_note) #understand this
     else
       next_node = Node.new(song_note) #class
       head.link = next_node
     end

     while next_node == true do
       tail = Node.new(song_note)
     end
   end

end

# def tail
#   temporary_head = @head
#   until temporary_head.next_node == nil
#     temporary_head = temporary_head.next_node
#   end
#   temporary_head
# end


#
#   def self.create_nodes(string)
#     string.split(", ").each do |word|
#       puts Nodes.new(word)
#     end
#   end
#
# end
# #
# # c = TrainCar.new
# t = Train.new("la, ba, da")
# t #<Train @head=#<TrainCar name; "la", linked_car: #<TrainCar name: "ba", linked_car: #<TrainCar name: "da", linked_car: nil>>>
#
# end
