class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :description

      t.timestamps
    end
  end
end
