require 'rails_helper'

describe "Users rambles can be viewed on their show page" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as:user)
    create_ramble("Woot!")

    visit user_path(user)
    expect(page).to display_ramble("Woot!")
  end
end
