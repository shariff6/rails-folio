class ProjectsController < ApplicationController
    def new
      @admin = Admin.find(params[:admin_id])
      @project = @admin.projects.new
    end
    def create
      @admin = Admin.find(params[:admin_id])
      @project = @admin.projects.new(project_params)
      if @project.save
        redirect_to admin_path(@admin.projects)
      else
        render :new
      end
    end
    def destroy
  @project = Project.find(params[:id])
  @project.destroy
  redirect_to admin_path
end

private
  def project_params
    params.require(:project).permit(:admin_id, :title, :technology, :link)
  end

  end
