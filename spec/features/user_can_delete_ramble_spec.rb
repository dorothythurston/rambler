require "rails_helper"

feature "User deletes ramble" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as: user)
    
    create_ramble("I say I say")
    click_on "Delete"

    expect(page).to have_content("Ramble deleted")
  end
end
