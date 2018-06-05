require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = create(:user)
  end

  it "valid attributes" do
    @user1 = build(:user, username: "new user", email: "valid@emai.yes")
    expect(@user1).to be_valid
  end
  it "unique username" do
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "unique email" do
    @user3 = build(:user)
    expect(@user3).to_not be_valid
  end
  it "username length invalid" do
    @user4 = build(:user, username: "estotienemasde20letra")
    expect(@user4).to_not be_valid
  end
end