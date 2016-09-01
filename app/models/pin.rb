class Pin < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }  #Check day 24 img upload with paperclip @ 2:50, you can add a link to a url instead of having a broken img icon
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
