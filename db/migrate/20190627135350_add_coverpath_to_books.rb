class AddCoverpathToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :cover_path, :string
  end
end
