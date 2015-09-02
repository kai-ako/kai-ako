require 'rails_helper'

RSpec.describe EmoState, type: :model do

  it "has a valid factory" do
    create(:lucy).should be_valid
  end

  it "is invalid without emotion" do
    build(:lucy, emotion: nil).should_not be_valid
  end

  it "returns emotion as a string" do
    lucy_emo = build(:lucy)
    lucy_emo.emotion.should == "happy"
  end

  it "returns comment as a string" do
    lucy_emo = build(:lucy)
    lucy_emo.comment.should == "I feel goodgit"
  end

end
