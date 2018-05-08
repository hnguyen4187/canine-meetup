class AddLatLngToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :lat, :integer
    add_column :events, :lng, :integer
  end
end
