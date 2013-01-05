class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo
  attr_accessible :comment, :good, :photo_id, :user_id
end
