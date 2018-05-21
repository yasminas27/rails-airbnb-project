class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.float :price_pppn
      t.references :user

      t.timestamps
    end
  end
end
