# spec/controllers/comments_controller_spec.rb

require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:project) { FactoryBot.create(:project) }

  before do
    sign_in user # If using Devise for authentication
  end

  describe "POST #create" do
    it "creates a new comment" do
      expect {
        post :create, params: { project_id: project.id, comment: { content: "This is a test comment." } }
      }.to change(Comment, :count).by(1)
    end

    it "redirects to the project page" do
      post :create, params: { project_id: project.id, comment: { content: "This is a test comment." } }
      expect(response).to redirect_to(project_path(project))
    end
  end
end
