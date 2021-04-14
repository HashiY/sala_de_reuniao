class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.string :rec_type
      t.integer :event_length
      t.integer :event_pid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
