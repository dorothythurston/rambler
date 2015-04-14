require "rails_helper"

feature "User deletes ramble" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as: user)
    
    fill_in "Body", with: "I say I say"
    click_on "Ramble!"
    click_on "Delete"

    expect(page).to have_content("Ramble deleted")
  end
end
