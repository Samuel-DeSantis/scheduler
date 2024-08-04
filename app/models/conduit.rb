class Conduit < ApplicationRecord

  has_many :cables

  belongs_to :project

end
