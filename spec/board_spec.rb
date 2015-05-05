require 'board'

describe Board do

   it {is_expected.to respond_to :fire}
  it {is_expected.to respond_to :place}

  let(:ship) {double :ship}
  let(:board) {double :board}


  it 'place the ship on the board' do
    subject.place(ship, :A1)
    expect(subject.grid[:A1]).to eq ship
  end

  it 'is able to hit the ship' do
    subject.place(ship, :A2)
    expect {subject.fire :A2}.to raise_error "Hit!"
  end
end