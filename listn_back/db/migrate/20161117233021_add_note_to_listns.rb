class AddNoteToListns < ActiveRecord::Migration[5.0]
  def change
    add_reference :listns, :note
  end
end
