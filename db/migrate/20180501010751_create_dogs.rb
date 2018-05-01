class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :fname
      t.string :lname
      t.string :gender
      t.integer :age
      t.string :breed
      t.boolean :fix

      t.timestamps
    end
  end
end
