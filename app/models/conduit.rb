class Conduit < ApplicationRecord

  has_many :cables
  belongs_to :project

  accepts_nested_attributes_for :project, allow_destroy: true

end
