class Course < ActiveRecord::Base
  attr_accessible :description, :objective, :prequisites, :title, :user_id

  has_many :sections
  belongs_to :user
end
