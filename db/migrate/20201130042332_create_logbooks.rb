class CreateLogbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :logbooks do |t|
      t.integer    :count,      null: false
      t.integer    :start_air,  null: false
      t.integer    :finish_air, null: false
      t.integer    :max_depth,  null: false
      t.integer    :ave_depth,  null: false
      t.string     :point,      null: false
      t.time       :entry_time, null: false
      t.time       :exit_time,  null: false
      t.text       :text,       null: false
      t.references :area,       null: false, foreign_key: true
      t.timestamps
    end
  end
end