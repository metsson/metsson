# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  url_title         :string(255)
#  short_description :string(255)
#  long_description  :text
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
