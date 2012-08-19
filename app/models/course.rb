class Course < ActiveRecord::Base
  attr_accessible :description, :objective, :prequisites, :title, :user_id

  has_many :sections
  has_and_belongs_to_many :users
end
