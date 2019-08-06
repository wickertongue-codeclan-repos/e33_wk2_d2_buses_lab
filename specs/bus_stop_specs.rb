require("minitest/autorun")
require("minitest/pride")
require_relative("../bus_stop")
require_relative("../person")

class BusstopTest < MiniTest::Test

  def setup
    @bus_stop = Busstop.new("Little France")
  end

def test_bus_stop_has_name
  assert_equal("Little France", @bus_stop.bus_stop_has_name)
end

end
