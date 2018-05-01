class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.date :date
      t.time :time

      t.references :dogs

      t.timestamps
    end
  end
end
