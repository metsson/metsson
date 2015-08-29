class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url_title
      t.string :short_description
      t.text :long_description
      t.timestamps
    end

    add_index :projects, [:url_title]
  end
end
