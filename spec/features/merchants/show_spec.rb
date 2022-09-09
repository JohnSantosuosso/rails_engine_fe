require 'rails_helper'

RSpec.describe 'Merchants' do
  it 'finds a merchant by id' do
  visit '/merchants/1'

  expect(page).to have_content("Name: Schroeder-Jerde")

  expect(page).to have_content("Item Nemo Facere")

  end
end
