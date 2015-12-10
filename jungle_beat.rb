require 'pry'
require_relative 'Node'


class JungleBeat
  attr_accessor :head

  def initialize(song_note = nil)
    song_note.split(" ").each do |note|
      append(note)
    end
  end

  def play
    `say -r 500 -v Boing #{all}`
  end

  def append(song_note)
    if @head == nil
      @head = Node.new(song_note)
    else
      current_node = tail
      current_node.link = Node.new(song_note)
    end
  end

  # def append(song_note)
  #   new_node = Node.new(song_note)
  #   tail.link = new_node
  # end

  def tail
    current_node = @head
    #while
    #current_node.link != nil
    until current_node.link.nil?
      current_node = current_node.link
    end
      current_node
  end

  def all
    all = ""
    current_node = @head
    while
      current_node != nil
      all += current_node.song_note + " "
      current_node = current_node.link
    end
      all.chop
  end

  def prepend(song_note)
    second_node = @head
    @head = Node.new(song_note)
    @head.link = second_node
  end

  def insert(position, song_note)
    count = 1
      if @head == nil
       @head = Node.new(song_note)
      else
      current_node = @head
      end
      while count < position
      current_node = current_node.link
      count += 1
      end
      current_node.link = Node.new(song_note, current_node.link)
  end

  def includes?(song_note)
    current_node = @head
    while current_node != nil && current_node.song_note != song_note
      current_node = current_node.link
    end
      if current_node.song_note == song_note
      true
      else
      false
      end
  end

#   while current_node != nil && current_node != song_note
#     if current_node.song_note == song_note
#       break
#     else
#       current_node = current_node.link
#       number += 1
#     end
#   end
#   number
# end

  def pop
    current_node = @head
    if current_node.link == nil
    then current_node = temp
      current_node = nil
      temp
    end
    until
      current_node.link.link == nil
      current_node = current_node.link
    end
      temp = current_node.link
      current_node.link = nil
      temp
  end

  def count
    if :song_note == nil
    quantity = 0
    else
    current_node = @head
    quantity = 0
      while
      current_node.link != nil
      current_node = current_node.link
      quantity += 1
      end
    quantity += 1
    end
      quantity
  end

  def number_in_line(song_note)
    if includes?(song_note) == true
    then check(song_note)
    else
      nil
    end
  end

  def check(song_note)
    current_node = @head
    number = 0

    while current_node.song_note != nil && current_node.song_note != song_note
      if current_node.song_note == song_note
        break
      else
        current_node = current_node.link
        number += 1
      end
    end
    number
  end

  def find(positions)
    current_node = @head
    positions.times do
      current_node = current_node.link
    end
      current_node.song_note
  end

end
