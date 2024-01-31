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


  def test_turn_left_from_north
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.turn_left
    assert_equal 'W', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_left_from_south
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'S')
    spacecraft.turn_left
    assert_equal 'E', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_left_from_east
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'E')
    spacecraft.turn_left
    assert_equal 'N', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_left_from_west
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'W')
    spacecraft.turn_left
    assert_equal 'S', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_right_from_north
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.turn_right
    assert_equal 'E', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_right_from_south
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'S')
    spacecraft.turn_right
    assert_equal 'W', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_right_from_east
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'E')
    spacecraft.turn_right
    assert_equal 'S', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_right_from_west
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'W')
    spacecraft.turn_right
    assert_equal 'N', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_up_from_north
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.turn_up
    assert_equal 'U', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_up_from_south
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'S')
    spacecraft.turn_up
    assert_equal 'U', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_up_from_east
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'E')
    spacecraft.turn_up
    assert_equal 'U', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_up_from_west
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'W')
    spacecraft.turn_up
    assert_equal 'U', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_down_from_north
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.turn_down
    assert_equal 'D', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_down_from_south
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'S')
    spacecraft.turn_down
    assert_equal 'D', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_down_from_east
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'E')
    spacecraft.turn_down
    assert_equal 'D', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_turn_down_from_west
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'W')
    spacecraft.turn_down
    assert_equal 'D', spacecraft.direction
    assert_equal [0, 0, 0], spacecraft.position
  end

  def test_execute_commands_forward
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['f'])
    assert_equal({ position: [0, 1, 0], direction: 'N' }, { position: spacecraft.position, direction: spacecraft.direction })
  end

  def test_execute_commands_backward
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['b'])
    assert_equal({ position: [0, -1, 0], direction: 'N' }, { position: spacecraft.position, direction: spacecraft.direction })
  end

  def test_execute_commands_left
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['l'])
    assert_equal({ position: [0, 0, 0], direction: 'W' }, { position: spacecraft.position, direction: spacecraft.direction })
  end

  def test_execute_commands_right
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['r'])
    assert_equal({ position: [0, 0, 0], direction: 'E' }, { position: spacecraft.position, direction: spacecraft.direction })
  end

  def test_execute_commands_turn_up
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['u'])
    assert_equal({ position: [0, 0, 0], direction: 'U' }, { position: spacecraft.position, direction: spacecraft.direction })
  end

  def test_execute_commands_turn_down
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['d'])
    assert_equal({ position: [0, 0, 0], direction: 'D' }, { position: spacecraft.position, direction: spacecraft.direction })
  end

  def test_execute_commands_complex
    spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')
    spacecraft.execute_commands(['f', 'r', 'u', 'b', 'l'])
    assert_equal({ position: [0, 1, -1], direction: 'N' }, { position: spacecraft.position, direction: spacecraft.direction })
  end
end
