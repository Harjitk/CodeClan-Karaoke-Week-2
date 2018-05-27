class Rooms

  attr_reader :number, :guests, :songs

  def initialize(number)
    @number = number
    @guests = []
    @songs = []
  end

  def check_in_guest_to_room(guest)
    if @guests.length < 2
    @guests << guest
  end
end

  def check_guest_out_of_room(guest)
    @guests.delete(guest)
  end

  def add_song_to_room(song)
    @songs << song
  end
end
