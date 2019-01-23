class AddIndexToSeller < ActiveRecord::Migration[5.2]
  def change
    add_index :sellers, :id
  end
end
