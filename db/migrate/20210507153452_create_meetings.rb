class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
