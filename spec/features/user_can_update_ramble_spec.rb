require 'rails_helper'

feature "User updates ramble" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as: user)
    
    create_ramble("I say I say")
    click_on "Update"
    fill_in "Body", with: "No way No way"
    click_on "Ramble!"

    expect(page).to have_content("No way No way")
  end
end
