class AddIngDirectionsToJuices < ActiveRecord::Migration[6.0]
  def change
    add_column :juices, :ing, :string
    add_column :juices, :directions, :string
  end
end
