require 'rails_helper'

RSpec.describe LearningObjective, type: :model do


  it "creates objective" do
    expect {
      LearningObjective.create(title: "Jorys stuff", description: "Not fun!!")
    }.to change {LearningObjective.count}.by(1)
  end

end
