require_relative 'jungle_beat'


class Node
  attr_accessor :song_note, :link


  def initialize(song_note, link = nil)
    @song_note =   song_note
    @link = link
  end
end
