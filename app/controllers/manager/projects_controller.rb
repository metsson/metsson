class Manager::ProjectsController < ApplicationController
  before_action :set_manager_project, only: [:edit, :update, :destroy]

  # GET /manager/projects
  def index
    @projects = Project.all
  end

  # GET /manager/projects/new
  def new
    @project = Project.new
  end

  # GET /manager/projects/1/edit
  def edit
  end

  # POST /manager/projects
  def create
    @project = Project.new(manager_project_params)

    upload_attached_images

    if @project.save
      redirect_to manager_root_path, notice: "#{@project.title} was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /manager/projects/1
  def update
    if @project.update(manager_project_params)
      upload_attached_images
      redirect_to manager_root_path, notice: "#{@project.title} was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /manager/projects/1
  def destroy
    @project.destroy
    redirect_to manager_root_path, notice: "#{@project.title} was successfully deleted."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def manager_project_params
      params[:project].permit(:title, :url_title, :short_description, :long_description)
    end

    def upload_attached_images
      if params[:images] and @project
        params[:images].each { |image|
          @project.project_pictures.create(avatar: image)
        }
      end

      # Delete images if any selected
      if params[:deleted_images] and @project 
        params[:deleted_images].each { |image_id|
          @picture = ProjectPicture.find(image_id) rescue nil
          @picture.destroy
        }
      end
    end
end
