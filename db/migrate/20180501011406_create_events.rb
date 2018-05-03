class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :date
      t.string :time


      t.references :dog
      t.references :admin

      t.timestamps
    end
  end
end
