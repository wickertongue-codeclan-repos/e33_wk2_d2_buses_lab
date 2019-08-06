require("minitest/autorun")
require("minitest/pride")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Kevin", 37)
  end

  def test_person_has_name
    assert_equal("Kevin", @person1.name())
  end

  def test_person_has_age
    assert_equal(37, @person1.age())

  end


end
