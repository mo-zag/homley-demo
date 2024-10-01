# spec/models/comment_spec.rb

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "is valid with valid attributes" do
    comment = FactoryBot.build(:comment)
    expect(comment).to be_valid
  end

  it "is invalid without content" do
    comment = FactoryBot.build(:comment, content: nil)
    expect(comment).not_to be_valid
  end

  it "belongs to a user and project" do
    comment = FactoryBot.build(:comment)
    expect(comment.user).to be_a(User)
    expect(comment.project).to be_a(Project)
  end
end
