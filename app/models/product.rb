class Product < ActiveRecord::Base

  has_attached_file :image, styles: { large: "362x429#", medium: "220x242#", small: "85x85#", thumb: "50x50#"},
    default_url: "/images/:style/missing.png"

  belongs_to  :category
  has_many    :eshop_products

  validates :name,        presence: true
  validates :description, presence: true
  validates :category,    presence: true

  def price
    eshop_products.order('price ASC').first.try(:price)
  end

end
