class Message < ActiveRecord::Base
  attr_accessible :body, :user_id
  belongs_to :section
  def author
    User.find(self.user_id).first_name
  end
end
