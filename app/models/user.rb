
class User < ApplicationRecord
    has_secure_password
    enum role: { user: 0, project_manager: 1, admin: 2 }
    has_many :comments
  end
  