class UserProject < ApplicationRecord

  belongs_to :user
  belongs_to :project

  validates_presence_of :user_id
  validates_presence_of :project_id

end
