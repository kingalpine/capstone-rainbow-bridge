class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.integer :position, null: false
      t.string :tier_size, null: false
      t.string :tier_special_notes
      t.references :cake_flavor, null: false, foreign_key: true
      t.references :frosting_flavor, null: false, foreign_key: true
      t.references :shape, null: false, foreign_key: true
      t.references :order_line, null: false, foreign_key: true

      t.timestamps
    end
  end
end
