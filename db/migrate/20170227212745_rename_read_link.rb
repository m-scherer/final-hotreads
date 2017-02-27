class RenameReadLink < ActiveRecord::Migration[5.0]
  def change
    remove_column :read_links, :title
    rename_table :read_links, :hot_links
  end
end
