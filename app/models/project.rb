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

class Project < ActiveRecord::Base
    has_many :project_pictures, dependent: :destroy
    default_scope { order(created_at: :desc) }
end
