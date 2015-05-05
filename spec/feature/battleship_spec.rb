require 'board'

feature 'As a player' do
  scenario 'I would like to place a ship in a board location' do
    ship = Ship.new
    board = Board.new
    board.place ship
    expect(board).to respond_to :place
    expect(ship).to be_placed
  end

  scenario 'I would like to fire at the ship' do
    ship = Ship.new
    board = Board.new
    game = Game.new
    board.place ship
    game.fire
    expect(ship).to be_hit
  end

end

#   scenario "I would like to have a ange of ships to choose from" do
#     board = Board.new
#     destroyer = Ship.new(Destroyer.new)
#     aircraft = Ship.new(Aircraft.new)
#     board.place(destroyer)

# end

