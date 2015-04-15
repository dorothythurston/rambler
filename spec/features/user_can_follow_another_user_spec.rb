require 'rails_helper'

feature "User can follow another user" do
  scenario "successfully" do
    other_user = create(:user)
    sign_in
    
    visit user_path(other_user)
    click_on("Follow")

    expect(page).to have_button("Unfollow")
  end
end
