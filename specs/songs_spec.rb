require("minitest/autorun")
require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @Songs = Songs.new("Wannabe")
  end

  def test_song_name
    assert_equal("Wannabe", @Songs.name())
  end
end
