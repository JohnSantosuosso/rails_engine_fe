require 'rails_helper'

RSpec.describe 'Merchants' do
  it 'shows a list of merchants by name' do
  visit '/merchants'

  expect(page).to have_content("Name: Schroeder-Jerde")
  expect(page).to have_link("Schroeder-Jerde")
  click_link("Schroeder-Jerde")
  expect(current_path).to eq("/merchants/1")
  end
end