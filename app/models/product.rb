class Product < ActiveRecord::Base

  has_attached_file :image, styles: { big: "500x600#", large: "362x429#", medium: "220x242#", small: "85x85#", thumb: "50x50#"},
    default_url: "/images/:style/missing.png"

  belongs_to  :category
  belongs_to  :table
  has_many    :eshop_products
  has_many    :sizes, through: :eshop_products
  has_many    :colors, through: :eshop_products

  validates :name,        presence: true
  validates :description, presence: true
  validates :category,    presence: true

  def price
    eshop_products.order('price ASC').first.try(:price)
  end

  def eshop_products_in_stock
    eshop_products.where('stock > 0')
  end

end
