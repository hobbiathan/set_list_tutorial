require 'rails_helper'

RSpec.describe 'the songs show page' do
  # As a visitor,
  # when I visit '/songs/1'
  # then I see that song's title, and artist


  it 'displays the song title' do
    artist = Artist.create(name: "Scuba Dvala")
    song = Song.create(title: "Mumble", length: 331, play_count: 17)

    # localhost:3000/songs/1
    visit "/songs/#{song.id}"
  end

  it 'displays the name of song artist'

end
