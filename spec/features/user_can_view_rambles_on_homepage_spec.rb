require 'rails_helper'

describe "User can view rambles on dashboard" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as:user)
    create_ramble("Woot!")

    visit root_path
    expect(page).to display_ramble("Woot!")
  end
end
