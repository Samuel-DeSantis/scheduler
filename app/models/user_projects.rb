class UserProjects < ApplicationRecord

  belongs_to :user
  belongs_to :projects

  validates_presence_of :user_id
  validates_presence_of :project_id

end
