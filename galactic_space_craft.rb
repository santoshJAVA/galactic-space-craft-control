class GalacticSpaceCraft
  attr_accessor :position, :direction

  def initialize(starting_position, initial_direction)
    @position = starting_position
    @direction = initial_direction
    @previous_direction = nil
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
    if @direction == 'U' || @direction == 'D'
      # If current direction is 'U' or 'D', use the previous direction
      case @previous_direction
      when 'N' then @direction = 'W'
      when 'S' then @direction = 'E'
      when 'E' then @direction = 'N'
      when 'W' then @direction = 'S'
      end
    else
      # If not 'U' or 'D', normal turning left logic
      case @direction
      when 'N' then @direction = 'W'
      when 'S' then @direction = 'E'
      when 'E' then @direction = 'N'
      when 'W' then @direction = 'S'
      end
      @previous_direction = @direction
    end
  end

  def turn_right
    if @direction == 'U' || @direction == 'D'
      # If current direction is 'U' or 'D', use the previous direction
      case @previous_direction
      when 'N' then @direction = 'E'
      when 'S' then @direction = 'W'
      when 'E' then @direction = 'S'
      when 'W' then @direction = 'N'
      end
    else
      # If not 'U' or 'D', normal turning right logic
      case @direction
      when 'N' then @direction = 'E'
      when 'S' then @direction = 'W'
      when 'E' then @direction = 'S'
      when 'W' then @direction = 'N'
      end
      @previous_direction = @direction
    end
  end

  def turn_up
    @direction = 'U'
  end

  def turn_down
    @direction = 'D'
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

    { position: @position, direction: @direction }
  end
end
