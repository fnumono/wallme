class Post < ActiveRecord::Base
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader


  def self.search(query)
  	where("content like ?", "%#{query}%")
  end

end
