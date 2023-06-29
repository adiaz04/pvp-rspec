require 'rubygems'
require 'rspec'
require 'faker'
require_relative 'main'

describe 'main' do
  let(:match) { 'match' }
  let(:player1) { 'player1' }
  let(:player2) { 'player2' }

  it 'should allow allow 2 players to register for a match' do
    # setup
    attributes = {
      player1: player1,
      player2: player2
    }

    # act
    match.setup(**attributes)

    # assert
    expect(match.players).to eq([player1, player2])

  end
end