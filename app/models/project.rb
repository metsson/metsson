class Project < ActiveRecord::Base
    has_many :project_pictures, dependent: :destroy
end
