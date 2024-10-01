# spec/features/comments_spec.rb

require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  let!(:user) { FactoryBot.create(:user) }
  let!(:project) { FactoryBot.create(:project) }

  scenario "User leaves a comment on a project" do
    visit project_path(project)

    fill_in "Your Comment", with: "This is a new comment."
    click_button "Post Comment"

    expect(page).to have_content("This is a new comment.")
  end
end
