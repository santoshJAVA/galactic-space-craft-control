require 'minitest/autorun'
require_relative '../galactic_space_craft' # Adjust the path as needed

class TestGalacticSpaceCraft < Minitest::Test
  def test_initial_position_and_direction
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    assert_equal [0, 0, 0], spacecraft.position
    assert_equal 'N', spacecraft.direction
  end

  def test_move_forward

  end

  def test_move_backward

  end

  def test_turn_left

  end

  def test_turn_right

  end

  def test_turn_up

  end

  def test_turn_down

  end

  def test_execute_commands

  end
end
