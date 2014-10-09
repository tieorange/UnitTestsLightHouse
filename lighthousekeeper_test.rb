require 'test/unit'
require_relative 'lighthousekeeper'

class LightHouseKeeperTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @light_house_keeper = LightHouseKeeper.new
  end

  def test_initialize


    #is_Dusk
    test_is_Dusk


  end

  def test_is_Dusk
    @light_house_keeper.is_Dusk
    assert_equal(:ASLEEP, @light_house_keeper.is_Dusk)
  end

  def test_is_Dawn
    @light_house_keeper.is_Dawn
    test_if_awake
    assert(@light_house_keeper.days_on_duty > 0, 'not incremented days_on_duty')
  end

  def test_restart_duty
    @light_house_keeper.restart_duty
    assert(@light_house_keeper.days_on_duty == 0, 'not restarted')
  end

  def test_if_days_zero
    assert_equal(0, @light_house_keeper.days_on_duty)
  end

  def test_if_awake
    assert_equal(:AWAKE, @light_house_keeper.status, 'not awake')
  end


end