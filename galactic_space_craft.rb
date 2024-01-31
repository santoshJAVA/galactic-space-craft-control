class GalacticSpaceCraft
  attr_accessor :position, :direction

  def initialize(starting_position, initial_direction)
    @position = starting_position
    @direction = initial_direction
  end

  def move_forward
    case @direction
      when 'N' then @position[1] += 1
      when 'S' then @position[1] -= 1
      when 'E' then @position[0] += 1
      when 'W' then @position[0] -= 1
      when 'U' then @position[2] += 1
      when 'D' then @position[2] -= 1
    end
  end

  def move_backward
    case @direction
    when 'N' then @position[1] -= 1
    when 'S' then @position[1] += 1
    when 'E' then @position[0] -= 1
    when 'W' then @position[0] += 1
    when 'U' then @position[2] -= 1
    when 'D' then @position[2] += 1
    end
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
