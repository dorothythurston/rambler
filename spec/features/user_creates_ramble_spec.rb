require "rails_helper"

feature "User creates ramble" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as: user)

    create_ramble("Just Rambling")

    expect(page).to have_css "p", text: "Just Rambling"
  end
end
