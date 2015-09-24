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

require 'test_helper'

class ProjectPictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
