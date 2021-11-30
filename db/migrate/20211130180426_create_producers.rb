class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :gender
      t.string :begin_area
      t.string :area
      t.string :birthday

      t.timestamps
    end
  end
end
