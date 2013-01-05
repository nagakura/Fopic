class Photo < ActiveRecord::Base
  attr_accessible :content_type, :explanation, :picture_data, :title, :picture_file, :day, :eat, :user_id
  belongs_to :user
  has_many :comment

  def picture_file= (p)
    if p
      self.picture_data = p.read
      self.content_type = p.content_type
    end
  end
end
