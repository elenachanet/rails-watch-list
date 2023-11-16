class ChangeColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :rating
    add_column :movies, :rating, :float
  end
end
