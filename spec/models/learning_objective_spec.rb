require 'rails_helper'

RSpec.describe LearningObjective, type: :model do


  it "creates objective" do
    expect {
      LearningObjective.create(title: "Jorys stuff", description: "Not fun!!")
    }.to change {LearningObjective.count}.by(1)
  end

  it 'has a title' do
    objective = build(:learning_objective)

    expect(objective.title).to eq('learn rails good')
  end

  it 'has a description' do
    objective = build(:learning_objective)

    expect(objective.description).to eq('make good on rails stuff')
  end

  it 'has a completed_at attr' do
    objective = build(:learning_objective)

    expect(objective.completed_at).to eq('+Mon, 21 Sep 2015 00:04:56 UTC +00:00')
  end

  describe 'learning objective can be deleted' do

    it 'deletes a objective' do
      objective = create(:learning_objective)

      expect{objective.destroy}.to change{LearningObjective.all.length}.by(-1)
    end
  end

end
