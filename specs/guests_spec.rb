require("minitest/autorun")
require_relative("../guests")
require_relative("../songs")

class GuestsTest < MiniTest::Test

  def setup
    @Guests = Guests.new("Sophie", 35)
    @Songs = Songs.new("Wannabe")

  end

  def test_guest_name
    assert_equal("Sophie", @Guests.name())
  end

  def test_guest_can_pay_entry_fee
    assert_equal(35, @Guests.guest_can_pay_entry_fee())
  end

  def test_favourite_song_on_playlist
    assert_equal("Whoo!", @Guests.favourite_song_on_playlist("Wannabe"))
  end

end
