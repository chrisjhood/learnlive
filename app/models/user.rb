class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :bio, :role, :token, :provider, :uid
  validates :email, :presence => :true, :uniqueness => :true, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :password, :length => { :within => 6..30}, :format => {:with => /^\w*(?=\w*\d)(?=\w*[a-z])(?=\w*[A-Z])\w*$/ }, :unless => :facebook_user
  validates :first_name, :presence => :true
  validates :last_name, :presence => :true

  has_many :courses, :dependent => :destroy
  has_many :sections, :through => :courses, :dependent => :destroy
  has_many :testimonials

  def facebook_user
    if !self.provider.blank?
      return true
    else
      return false
    end
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provier, :uid)).first_or_create do |user|
      user.provider     = auth.provider
      user.uid          = auth.uid
      user.email        = auth.info.email.downcase
      user.first_name   = auth.info.first_name
      user.last_name    = auth.info.last_name
      user.fb_token     = auth.credentials.token
      user.expires_at   = auth.credentials.expires_at
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end
end