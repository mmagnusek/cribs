class CreateTablesEshop < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string      :name
      t.string      :description
      t.string      :specification
      t.string      :material
      t.integer     :category_id
      t.attachment  :image
      t.timestamps
    end
    create_table :eshop_products do |t|
      t.integer     :product_id
      t.integer     :color_id
      t.integer     :size_id
      t.integer     :stock
      t.decimal     :price
      t.timestamps
    end
    create_table :images do |t|
      t.attachment :image
      t.integer    :eshop_product_id
    end
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
    create_table :colors do |t|
      t.string :name
      t.timestamps
    end
    create_table :sizes do |t|
      t.string :name
      t.timestamps
    end
  end
end
