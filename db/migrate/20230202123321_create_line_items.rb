class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 1
      t.integer :product_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
