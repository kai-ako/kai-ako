require 'rails_helper'

RSpec.describe EmoState, type: :model do

  it "has a valid factory" do
    create(:emo_state).should be_valid
  end

  it "is invalid without emotion" do
    build(:emo_state, emotion: nil).should_not be_valid
  end

  it "returns emotion as a string" do
    emo_state = build(:emo_state)
    emo_state.emotion.should == "happy"
  end

  it "returns comment as a string" do
    emo_state = build(:emo_state)
    emo_state.comment.should == "I feel good"
  end

end
