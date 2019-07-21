class DropPublications < ActiveRecord::Migration[5.2]
  def change
    drop_table :publications
  end
end
