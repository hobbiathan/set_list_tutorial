require 'rails_helper'

RSpec.describe 'The Artist Creation' do
  it 'links to new page from artists#index' do
    visit '/artists'

    click_link("New Artist")
    expect(current_path).to eq("/artists/new")
  end

  it 'can create a new artist' do
    visit '/artists/new'

    fill_in('Name', with: 'TOPS')
    click_button('Create Artist')

    new_artist_id = Artist.last.id

    expect(current_path).to eq("/artists")
    expect(page).to have_content("TOPS")
  end
end
