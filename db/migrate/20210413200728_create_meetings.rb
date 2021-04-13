class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
