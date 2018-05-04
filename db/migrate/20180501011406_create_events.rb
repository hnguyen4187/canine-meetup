class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :date
      t.string :time

<<<<<<< HEAD
      t.references :admin
      t.references :dog
=======
      t.references :dog
      t.references :admin
>>>>>>> d46bdec72ecc645c25a668c65e832de27a0cbde0

      t.timestamps
    end
  end
end
