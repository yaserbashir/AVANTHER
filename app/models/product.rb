class Product < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy

  has_many :notifications, dependent: :destroy



	has_many :favorite_products
	has_many :favoritable, through: :favorite_products, source: :user

	

  has_attached_file :img, styles: { product_index: "250x350px>", product_show: "450x600>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/

  
  def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  where("content LIKE ?", "%#{search}%")
	end
	#Note: this will work in development with SQLite. If you switch to PostgreSQL in production, you may need to change  LIKE to  ILIKE
  
  

end

