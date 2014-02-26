class EshopProduct < ActiveRecord::Base

  belongs_to :product
  belongs_to :color
  belongs_to :size
  has_many   :images

  validates :product, presence: true
  validates :color,   presence: true
  validates :size,    presence: true
  validates :stock,   presence: true
  validates :price,   presence: true

  accepts_nested_attributes_for :images, allow_destroy: true

end
