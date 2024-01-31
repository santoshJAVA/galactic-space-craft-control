require 'minitest/autorun'
require_relative '../galactic_space_craft' # Adjust the path as needed

class TestGalacticSpaceCraft < Minitest::Test
  def test_initial_position_and_direction
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    assert_equal [0, 0, 0], spacecraft.position
    assert_equal 'N', spacecraft.direction
  end

  



 def test_move_forward_north
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.move_forward
    assert_equal [0, 1, 0], spacecraft.position
  end

  def test_move_forward_south
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'S')
    spacecraft.move_forward
    assert_equal [0, -1, 0], spacecraft.position
  end

  def test_move_forward_east
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'E')
    spacecraft.move_forward
    assert_equal [1, 0, 0], spacecraft.position
  end

  def test_move_forward_west
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'W')
    spacecraft.move_forward
    assert_equal [-1, 0, 0], spacecraft.position
  end

  def test_move_forward_up
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'U')
    spacecraft.move_forward
    assert_equal [0, 0, 1], spacecraft.position
  end

  def test_move_forward_down
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'D')
    spacecraft.move_forward
    assert_equal [0, 0, -1], spacecraft.position
  end

  def test_move_backward_north
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.move_backward
    assert_equal [0, -1, 0], spacecraft.position
  end

  def test_move_backward_south
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'S')
    spacecraft.move_backward
    assert_equal [0, 1, 0], spacecraft.position
  end

  def test_move_backward_east
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'E')
    spacecraft.move_backward
    assert_equal [-1, 0, 0], spacecraft.position
  end

  def test_move_backward_west
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'W')
    spacecraft.move_backward
    assert_equal [1, 0, 0], spacecraft.position
  end

  def test_move_backward_up
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'U')
    spacecraft.move_backward
    assert_equal [0, 0, -1], spacecraft.position
  end

  def test_move_backward_down
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'D')
    spacecraft.move_backward
    assert_equal [0, 0, 1], spacecraft.position
  end
  

  def test_turn_left

  end

  def test_turn_right

  end

  def test_turn_up

  end

  def test_turn_down

  end

  def test_execute_commands_forward
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['f'])
    assert_equal [0, 1, 0], spacecraft.position
    assert_equal 'N', spacecraft.direction
  end

  def test_execute_commands_backward
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['b'])
    assert_equal [0, -1, 0], spacecraft.position
    assert_equal 'N', spacecraft.direction
  end
end
