module Features
  def create_ramble(ramble_content)
    fill_in "ramble_body", with: ramble_content
    click_on "Ramble!"
  end

  def display_ramble(ramble_content)
    have_content(ramble_content)
  end
end
