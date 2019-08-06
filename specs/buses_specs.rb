require("minitest/autorun")
require("minitest/pride")
require_relative("../buses")

class BusesTest < MiniTest::Test

  def setup
    @bus1 = Bus.new(14, "Castle Terrace")
  end

def test_bus_has_route_number
  assert_equal(14, @bus1.route_number())
end

def test_bus_has_destination
  assert_equal("Castle Terrace", @bus1.destination())

end

def test_bus_drive_sound
  assert_equal("Brum brum", @bus1.drive_sound())
end

end
