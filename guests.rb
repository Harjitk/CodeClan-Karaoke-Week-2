class Guests

  attr_reader :name, :guest_money, :fav_song

  def initialize(name, guest_money)
    @name = name
    @guest_money = guest_money
    @fav_song = fav_song

  end

def guest_can_pay_entry_fee
  entry_fee = 5
  if @guest_money >= entry_fee
    @guest_money -= 5
  end
end

def favourite_song_on_playlist(song)
    if song == @fav_song
      return "Whoo!"
    end
  end

end
