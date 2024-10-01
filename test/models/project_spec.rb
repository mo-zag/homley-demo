# spec/models/project_spec.rb

require 'rails_helper'

RSpec.describe Project, type: :model do
  it "is valid with valid attributes" do
    project = FactoryBot.build(:project)
    expect(project).to be_valid
  end

  it "is invalid without a name" do
    project = FactoryBot.build(:project, name: nil)
    expect(project).not_to be_valid
  end
end
