require 'rails_helper'

RSpec.describe EmoStatesController, type: :controller do

  describe "GET #index " do
    let(:create_student) { create(:user) }
    let(:create_teacher) { create(:teacher) }
    before do
      student1 = create_student
      student1.emo_states.create (emotion: "happy")
      student1.emo_states.create (emotion: "sad")
      student2 = create_student
      student2.emo_states.create (emotion: "happy")
      student2.emo_states.create (emotion: "sad")
      create_teacher
      get :index
    end

    it "redircts to index page" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "Teacher can get emo states of students" do
      expect(@emostates)
    end
    it "Student can get their own emo states"do
    end
      end
    end
  end

end

