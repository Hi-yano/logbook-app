class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer    :thickness,         null: false
      t.integer    :suitstype_id,      null: false
      t.integer    :weight,            null: false
      t.integer    :capacity_id,       null: false
      t.integer    :type_id,           null: false
      t.references :area,              null: false, foreign_key: true
      t.timestamps
    end
  end
end