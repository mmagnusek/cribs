class EshopProduct < ActiveRecord::Base

  has_attached_file :image, styles: { large: "362x429#", medium: "220x242#", small: "85x85#", thumb: "50x50#"},
    default_url: "/images/:style/missing.png"

  belongs_to :product
  belongs_to :color
  belongs_to :size

  validates :product, presence: true
  validates :color,   presence: true
  validates :size,    presence: true
  validates :stock,   presence: true
  validates :price,   presence: true

end
