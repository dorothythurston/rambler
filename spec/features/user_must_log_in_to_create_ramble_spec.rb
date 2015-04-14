require "rails_helper"

feature "User can add new ramble if logged in" do
  scenario "succesfully" do
    user = create(:user)
    visit root_path(as: user)

    expect(page).to have_button("Ramble!")
  end

  scenario "unsuccesfully" do
    visit root_path

    expect(page).not_to have_button("Ramble!")
  end
end
