require 'rails_helper'

RSpec.describe 'The Artist Creation' do
  it 'links to new page from artists#index' do
    visit '/artists'

    click_link("New Artist")
    expect(current_path).to eq("/artists/new")
  end
end
