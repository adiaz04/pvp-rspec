require 'rubygems'
require 'rspec'
require 'faker'
require_relative 'main'

describe 'main' do
  context 'match hasnt started' do
    let(:player1) { 'player1' }
    let(:player2) { 'player2' }
    let(:attributes) { { player1: player1, player2: player2 } }
    let(:match) { Match.new(**attributes) }

    it 'should allow allow 2 players to register for a match' do
      expect(match.players).to eq([player1, player2])
    end

    it 'should have an initial state of match_starting_soon' do
      expect(match.state).to eq('match_starting_soon')
    end
  end
end