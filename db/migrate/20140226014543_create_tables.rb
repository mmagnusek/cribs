class CreateTables < ActiveRecord::Migration
  def change
    add_column :products, :table_id, :integer
    create_table :tables do |t|
      t.string :name
      t.string :a_uni
      t.string :a_xs
      t.string :a_s
      t.string :a_m
      t.string :a_l
      t.string :a_xl
      t.string :a_xxl
      t.string :b_uni
      t.string :b_xs
      t.string :b_s
      t.string :b_m
      t.string :b_l
      t.string :b_xl
      t.string :b_xxl
      t.string :c_uni
      t.string :c_xs
      t.string :c_s
      t.string :c_m
      t.string :c_l
      t.string :c_xl
      t.string :c_xxl
      t.string :d_uni
      t.string :d_xs
      t.string :d_s
      t.string :d_m
      t.string :d_l
      t.string :d_xl
      t.string :d_xxl
      t.string :e_uni
      t.string :e_xs
      t.string :e_s
      t.string :e_m
      t.string :e_l
      t.string :e_xl
      t.string :e_xxl
    end
  end
end
