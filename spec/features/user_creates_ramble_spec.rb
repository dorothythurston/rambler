require "rails_helper"

feature "User creates ramble" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as: user)

    fill_in "Body", with: "Just Rambling"
    click_on "Ramble!"

    expect(page).to have_css "p", text: "Just Rambling"
  end
end
