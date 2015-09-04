require 'rails_helper'

RSpec.describe EmoState, type: :model do

  # it "has a valid factory" do
  #   create(:emo_state).should be_valid
  # end

  # it "is invalid without emotion" do
  #   build(:emo_state, emotion: nil).should_not be_valid
  # end

  # it "returns emotion as a string" do
  #   emo_state = build(:emo_state)
  #   emo_state.emotion.should == "happy"
  # end

  # it "returns comment as a string" do
  #   emo_state = build(:emo_state)
  #   emo_state.comment.should == "I feel good"
  # end

  it 'creates a new emotional state' do
    #arrange
    #act
    EmoState.create(:emotion => 'happy', :comment => 'woop!')
    #assert
    expect(EmoState.last.emotion).to eq('happy')

    expect(EmoState.last.comment).to eq('woop!')
  end

  it 'tests validation for emostate input' do
    #arrange
    #act
    #assert
    expect{
        EmoState.create(:emotion => nil, :comment => 'meh')
      }.to_not change{EmoState.count}
  end

end
