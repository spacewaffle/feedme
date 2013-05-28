class Feed < ActiveRecord::Base
   attr_accessible :title, :active
   belongs_to :user, limit: 1

end
