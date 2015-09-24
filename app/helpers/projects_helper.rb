module ProjectsHelper

    # Rernder a thumbnail for project if any
    def project_has_thumbnails? project
        project.project_pictures.size > 2
    end

    def get_primary_pictures project 
        if project and project_has_thumbnails? project
            project.project_pictures.select { |p| p.is_primary == true  }.take(2)
        else
            nil
        end
    end
end
