class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_one :feed, :dependent => :destroy

  before_create :create_feed

  def create_feed
    feed = Feed.create({user_id:, self.id})
    # Maybe check if profile gets created and raise an error 
    #  or provide some kind of error handling
  end
end
