class AddCreatorToJuices < ActiveRecord::Migration[6.0]
  def change
    add_column :juices, :creator, :string
  end
end
