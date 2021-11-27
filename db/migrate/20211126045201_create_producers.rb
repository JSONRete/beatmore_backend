class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.integer :rating
      t.string :search

      t.timestamps
    end
  end
end
