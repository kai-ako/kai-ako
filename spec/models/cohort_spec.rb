require 'rails_helper'

RSpec.describe Cohort, type: :model do
  it 'new Cohort schema exists' do
    create(:cohort).should be_valid
  end


end
