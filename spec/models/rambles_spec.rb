require 'spec_helper'

describe Ramble do
  it "has an author" do
    user = create(:user)
    ramble = Ramble.new(body: "hello", user_id: user.id)
    expect(ramble.save).to be(true)
    expect(ramble.user).to eql user
  end
end
