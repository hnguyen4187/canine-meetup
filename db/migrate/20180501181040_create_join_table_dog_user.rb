class CreateJoinTableDogUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dogs, :users do |t|
      # t.index [:dog_id, :user_id]
      # t.index [:user_id, :dog_id]
    end
  end
end
