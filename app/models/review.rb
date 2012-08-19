class Review < ActiveRecord::Base
  attr_accessible :comment, :section_id, :rating

  belongs_to :section
end
