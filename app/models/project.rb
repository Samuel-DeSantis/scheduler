class Project < ApplicationRecord

  has_many :conduits

  has_many :user_projects
  has_many :users, through: :user_projects

end
