require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as: user)

    click_on "Ramble Something"
    fill_in "Body", with: "Just Rambling"
    click_on "Ramble!"

    expect(page).to have_css "p", text: "Just Rambling"
  end
end
