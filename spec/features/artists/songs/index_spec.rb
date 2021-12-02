# As a user
# When I visit an Artist's Songs index
# Then I see the titles all of that Artist's Songs
# And I see that each title is a link to the songs show page

require 'rails_helper'

RSpec.describe 'Artists songs index' do

  before(:each) do
    @prince = Artist.create!(name: "Prince")
    @song = @prince.songs.create!(title: "Raspberry Beret", length: 385, play_count: 38525)
    @song_2 = @prince.songs.create!(title: "Purple Rain", length: 585, play_count: 19513)
  end

  it 'shows all of the titles of the songs of a given artist' do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content(@song.title)
    expect(page).to have_content(@song_2.title)

  end

  it 'links to each songs show page' do

  end
end
