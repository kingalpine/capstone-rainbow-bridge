class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.integer :Position
      t.references :Cake_Flavor, null: false, foreign_key: true
      t.references :Frosting_Flavor, null: false, foreign_key: true
      t.references :Shape, null: false, foreign_key: true
      t.references :Order_Line, null: false, foreign_key: true
      t.string :Tier_Size
      t.text :Tier_Special_Notes

      t.timestamps
    end
  end
end
