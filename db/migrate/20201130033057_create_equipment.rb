class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.integer    :thickness,         null: false
      t.integer    :type_id,           null: false
      t.integer    :weight,            null: false
      t.integer    :dive_tank_cap_id,  null: false
      t.integer    :dive_tank_type_id, null: false
      t.references :area,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
