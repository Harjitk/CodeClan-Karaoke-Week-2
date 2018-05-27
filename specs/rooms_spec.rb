require("minitest/autorun")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomsTest < MiniTest::Test

  def setup
    @room = Rooms.new(1)
    @guest = Guests.new("Sophie", 1)
    @song = Songs.new("Wannabe")
  end

  def test_room_number
    assert_equal(1, @rooms.number())
  end


  def test_check_in_guest_to_room
    @rooms.check_in_guest_to_room(@guests)
    assert_equal(1, @rooms.guests().length())
  end

  def test_check_guest_out_of_room
    @rooms.check_guest_out_of_room(@guests)
    assert_equal(0, @rooms.guests().length())
  end

  def test_add_song_to_room
    @rooms.add_song_to_room(@songs)
    assert_equal(1, @rooms.songs.count)
  end
end
