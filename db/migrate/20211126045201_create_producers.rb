class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.integer :raiting
      t.string :search

      t.timestamps
    end
  end
end
