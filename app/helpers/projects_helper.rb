module ProjectsHelper

    # Rernder a thumbnail for project if any
    def project_has_a_thumbnail? project
        project.project_pictures.size > 0
    end
end
