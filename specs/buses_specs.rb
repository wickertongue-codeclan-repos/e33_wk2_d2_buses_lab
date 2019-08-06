require("minitest/autorun")
require("minitest/pride")
require_relative("../buses")
require_relative("../person")

class BusesTest < MiniTest::Test

  def setup
    person = Person.new("Kevin", 37)
    @bus1 = Bus.new(14, "Castle Terrace", person.name)
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
