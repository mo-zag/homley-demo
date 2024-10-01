class Project < ApplicationRecord
    has_many :comments
    enum status: { not_started: 0, in_progress: 1, completed: 2, on_hold: 3, cancelled: 4 }
  end
  