class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.date :date
      t.time :time

      t.references :admin
      t.references :dog

      t.timestamps
    end
  end
end
