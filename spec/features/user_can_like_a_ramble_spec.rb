require "rails_helper"

describe "User likes a ramble" do
  scenario "succesfully" do
    user = create(:user)
    sign_in_as(user)
    ramble = create_ramble("Please upvote <3")
    sign_out
    other_user = create(:user)
    sign_in_as(other_user)
    click_on "Please upvote <3"
    click_on "Like"

    expect(page).to have_content("1 like")
  end
end
