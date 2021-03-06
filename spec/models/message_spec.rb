require 'rails_helper'

RSpec.describe Message, type: :model do
  it "valid attributes" do
    @user = create(:user)
    @message1 = build(:message, user_id: @user.id)
    expect(@message1).to be_valid
  end
  it "nil user_id invalid" do
    @message2 = build(:message, user_id: nil)
    expect(@message2).to_not be_valid
  end
  it "non existing user_id invalid" do
    @message3 = build(:message, user_id: 10000)
    expect(@message3).to_not be_valid
  end
end