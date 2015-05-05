
class Board

  attr_accessor :grid

  def initialize
  @grid = {
    :A1 => 'empty',
    :A2 => 'empty',
    :B1 => 'empty',
    :B2 => 'empty'
  }
  end

  def place ship, location
    grid.each_pair do |coordinate, contents|
      if coordinate == location
        grid[coordinate] = ship
      end
    end
  end

  def fire location
    if grid[location] != 'empty'
     raise 'Hit!'
     else
      raise 'Miss!'
    end
  end
end