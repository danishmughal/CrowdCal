class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.string :address
      t.datetime :start_time
      t.datetime :end_time
      t.string :description
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
