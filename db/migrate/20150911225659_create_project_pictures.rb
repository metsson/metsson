class CreateProjectPictures < ActiveRecord::Migration
  def change
    create_table :project_pictures do |t|
      t.belongs_to :project, index: true, null: false
      t.timestamps
    end
  end
end
