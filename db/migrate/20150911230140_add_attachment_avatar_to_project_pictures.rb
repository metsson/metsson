class AddAttachmentAvatarToProjectPictures < ActiveRecord::Migration
  def self.up
    change_table :project_pictures do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :project_pictures, :avatar
  end
end
