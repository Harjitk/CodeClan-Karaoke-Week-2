require("minitest/autorun")
require("minitest/rg")

require_relative("../bar")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class TestBar < MiniTest::Test

  def setup
    @bar = Bar.new()
    @Guests = Guests.new("Sophie", 35)
    @room = Rooms.new(1)
  end

end
