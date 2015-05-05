require 'board'
require 'ship'

feature 'As a player' do
  scenario 'I would like to place a ship in a board location' do
    ship = Ship.new
    board = Board.new
    board.place(ship, :A1)
    expect(board.grid[:A1]).to eq ship
  end


  scenario 'I would like to know if I have hit or miss a ship' do
    ship = Ship.new
    board = Board.new
    board.place(ship, :A2)
    expect{board.fire :A2}.to raise_error 'Hit!'
  end

end

#   scenario "I would like to have a ange of ships to choose from" do
#     board = Board.new
#     destroyer = Ship.new(Destroyer.new)
#     aircraft = Ship.new(Aircraft.new)
#     board.place(destroyer)

# end

