require 'rails_helper'

RSpec.describe LearningObjective, type: :model do


  it "creates objective" do
    objective = LearningObjective.create(title: "Jorys stuff", description: "Not fun!!")
    expect(LearningObjective.count).to eq(1)
  end

    it "delete objective" do

      expect()
end
