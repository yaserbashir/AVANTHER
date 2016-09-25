class Product < ApplicationRecord
	belongs_to :user
	has_many :comments
	

  has_attached_file :img, styles: { product_index: "250x200", product_show: "475x325#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/

end
