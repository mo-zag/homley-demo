# spec/factories/projects.rb

FactoryBot.define do
    factory :project do
      name { "Test Project" }
      description { "A sample project description." }
      status { "in_progress" }
    end
  end
  