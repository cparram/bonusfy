class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :units
      t.integer :amount
      t.string :buyer_name
      t.belongs_to :product, foreign_key: true, index: true

      t.timestamps
    end
  end
end
