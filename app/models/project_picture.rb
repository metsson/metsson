# == Schema Information
#
# Table name: project_pictures
#
#  id                  :integer          not null, primary key
#  project_id          :integer          not null
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  is_primary          :boolean          default(FALSE)
#

class ProjectPicture < ActiveRecord::Base
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
