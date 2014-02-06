class CreateTablesEshop < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string      :name
      t.string      :description
      t.string      :specification
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
      t.attachment  :image
      t.timestamps
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
