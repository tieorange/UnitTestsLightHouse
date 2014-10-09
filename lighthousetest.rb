require 'test/unit'
require_relative 'lighthouse.rb'

class LighthouseTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @light_house = LightHouse.new
  end

  def test_initialize
    assert(@light_house.on_or_off == :OFF, 'new lighthouse not off')
  end

  def test_press_button
    @light_house.press_button
    assert_equal(:ON, @light_house.on_or_off, 'not turned on')
    #assert(@light_house.on_or_off == :ON, "not turned on") #the same as above

    #check press_button OFF
    @light_house.press_button
    assert_not_equal(:ON, @light_house.on_or_off, 'not turned off')


  end
end