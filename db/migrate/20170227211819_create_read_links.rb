class CreateReadLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :read_links do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
