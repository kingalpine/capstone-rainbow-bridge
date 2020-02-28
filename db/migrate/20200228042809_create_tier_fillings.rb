class CreateTierFillings < ActiveRecord::Migration[6.0]
  def change
    create_table :tier_fillings do |t|
      t.references :Tier, null: false, foreign_key: true
      t.references :Filling, null: false, foreign_key: true

      t.timestamps
    end
  end
end
