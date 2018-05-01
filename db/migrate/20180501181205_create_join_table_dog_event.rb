class CreateJoinTableDogEvent < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dogs, :events do |t|
      # t.index [:dog_id, :event_id]
      # t.index [:event_id, :dog_id]
    end
  end
end
