class CreateDietaryRestrictions < ActiveRecord::Migration[6.0]
  def change
    create_table :dietary_restrictions do |t|
      t.string :Dietary_Restriction_Name, null:false

      t.timestamps
    end
  end
end
