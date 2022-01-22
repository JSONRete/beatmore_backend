class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :legal_name
      t.string :begin_area
      t.string :birthday
      t.timestamps
    end
  end
end
