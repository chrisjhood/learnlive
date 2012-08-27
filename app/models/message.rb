class Message < ActiveRecord::Base
  attr_accessible :body, :user_id, :section_id
  belongs_to :section
  belongs_to :user
  def author
    User.find(self.user_id).first_name
  end

  def self.for_classroom(classroom)
    self.where(:section_id => classroom)
  end
end
