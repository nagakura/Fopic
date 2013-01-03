class Photo < ActiveRecord::Base
  attr_accessible :content_type, :explanation, :picture_data, :title, :picture_file
  
  def picture_file= (p)
    if p
      self.picture_data = p.read
      self.content_type = p.content_type
    end
  end
end
