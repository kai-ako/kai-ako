require 'rails_helper'

RSpec.describe EmoState, type: :model do

  it "has a valid factory" do
    emo_state = create(:emo_state)
    expect(emo_state).to be_valid
  end

  it "is invalid without emotion" do
    invalid_emo_state = build(:emo_state, emotion: nil)
    expect(invalid_emo_state).to be_invalid
  end

  it "returns emotion as a string" do
    emo_state = build(:emo_state)
    expect(emo_state.emotion).to eq("happy")
  end

  it "returns comment as a string" do
    emo_state = build(:emo_state)
    expect(emo_state.comment).to eq("I feel good")
  end

  it "user can have multiple emo_states" do

    user = User.reflect_on_association(:emo_states)
    expect(user.macro).to eq(:has_many)

  end

  it "emo_state belongs to user" do
    state = EmoState.reflect_on_association(:user)
    expect(state.macro).to eq(:belongs_to)
  end

end
