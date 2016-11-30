class CreateListns < ActiveRecord::Migration[5.0]
  def change
    create_table :listns do |t|
      t.string :artist
      t.string :work
      t.string :work_type

      t.timestamps
    end
  end
end
