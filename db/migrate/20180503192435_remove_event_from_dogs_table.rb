class RemoveEventFromDogsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :event_id
  end
end
