class CreateJuices < ActiveRecord::Migration[6.0]
  def change
    create_table :juices do |t|
      t.string :name
      t.string :imageURL

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
