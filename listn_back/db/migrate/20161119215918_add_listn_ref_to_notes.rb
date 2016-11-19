class AddListnRefToNotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :listn, foreign_key: true
  end
end
