class CreateCategoriesProductJoinTable < ActiveRecord::Migration
  def self.up
    create_table :categories_products, :id => false do |t|
      t.integer :category_id
      t.integer :product_id
    end

    add_index :categories_products, [:category_id, :product_id], :unique => true
  end

  def self.down
    drop_table :categories_products
  end
end