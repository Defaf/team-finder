class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :nameEvent
      t.string :description
      t.date :date
      t.time :time
      t.string :duration
      t.string :team
      t.string :location

      t.timestamps
    end
  end
end
