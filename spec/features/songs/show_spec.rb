require 'rails_helper'

RSpec.describe 'the songs show page' do

  it 'displays the song title' do
    artist = Artist.create!(name: "Scuba Dvala")
    song = artist.songs.create!(title: "Mumble", length: 331, play_count: 17)
    song_two = artist.songs.create!(title: "Runner", length: 351, play_count: 1)

    # localhost:3000/songs/1
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_two.title)
  end

  it 'displays the name of song artist' do
    artist = Artist.create!(name: "Scuba Dvala")
    song = artist.songs.create!(title: "Mumble", length: 331, play_count: 17)
    song_two = artist.songs.create!(title: "Runner", length: 351, play_count: 1)

    # localhost:3000/songs/1
    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end

end
