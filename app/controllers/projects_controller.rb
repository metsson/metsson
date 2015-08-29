class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def view
    begin
        if params[:id] or params[:title]
            @project = Project.find_by(url_title: params[:title])
        else
            raise 'No id or title given'
        end
    rescue 
        flash[:notice] = "Projekted du sökte efter kunde inte hittas."
        redirect_to projects_url
    end
  end
end
