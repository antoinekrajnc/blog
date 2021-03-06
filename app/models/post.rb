class Post < ApplicationRecord
  has_attached_file :avatar, styles: {

    large:"1000x1000>" ,
    medium: "300x300>",
    thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :title, use: :slugged
end
