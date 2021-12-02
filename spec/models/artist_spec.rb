require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs} # ShouldaMatchers syntax

  describe 'instance methods' do
    describe '#average_song_length' do
      before(:each) do
        @prince = Artist.create!(name: "Prince")
        @song = @prince.songs.create!(title: "Raspberry Beret", length: 385, play_count: 38525)
        @song_2 = @prince.songs.create!(title: "Purple Rain", length: 585, play_count: 19513)
        @song_3 = @prince.songs.create!(title: "The Prince Song by Prince", length: 1, play_count: 414)
      end

      it 'returns average song length' do
        # .round() doesn't work unless made into a float within artist.rb
        # will .round() without parameters, but not to a given decimal place
        # really annoying
        expect(@prince.average_song_length.round(2)).to eq(323.67)
      end
    end
  end
end
