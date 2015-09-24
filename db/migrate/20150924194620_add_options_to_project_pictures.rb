class AddOptionsToProjectPictures < ActiveRecord::Migration
  def change
    add_column :project_pictures, :is_primary, :boolean, default: false
  end
end
