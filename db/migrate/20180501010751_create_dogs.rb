class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :fname
      t.string :lname
      t.string :gender
      t.integer :age
      t.string :breed
      t.string :fix


      t.references :user

      t.timestamps
    end
  end
end
