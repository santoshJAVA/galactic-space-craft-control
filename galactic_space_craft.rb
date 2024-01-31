class GalacticSpaceCraft
  attr_accessor :position, :direction

  def initialize(starting_position, initial_direction)
    @position = starting_position
    @direction = initial_direction
  end

  def move_forward
  end

  def move_backward
  end

  def turn_left
  end

  def turn_right
  end

  def turn_up
  end

  def turn_down
  end

  def execute_commands(commands)
    commands.each do |command|
      case command
      when 'f' then move_forward
      when 'b' then move_backward
      when 'l' then turn_left
      when 'r' then turn_right
      when 'u' then turn_up
      when 'd' then turn_down
      end
    end
  end
end
