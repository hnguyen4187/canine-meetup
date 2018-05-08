class CreateDogEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_events do |t|
      t.integer :dog_id
      t.integer :event_id
      
      t.timestamps
    end
  end
end
