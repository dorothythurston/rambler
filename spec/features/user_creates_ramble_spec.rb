require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Ramble Something"
    fill_in "Body", with: "Just Rambling"
    click_on "Ramble!"

    expect(page).to have_css "p", text: "Just Rambling"
  end
end
