class Section < ActiveRecord::Base
  attr_accessible :date, :time, :course_id
  belongs_to :course
  has_many :reviews
  has_many :messages

end
