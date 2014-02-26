class Image < ActiveRecord::Base

  belongs_to :eshop_product

  validates :image, attachment_presence: true

  has_attached_file :image, styles: { big: "500x600#", large: "362x429#", medium: "220x242#", small: "85x85#", thumb: "50x50#"},
    default_url: "/images/:style/missing.png"

end
