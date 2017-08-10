class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end
    def new
      @project = Project.new
      render :new
    end
    def create
      @project = Project.new(project_params)
      if @project.save
        redirect_to projects_path
      else
        render :new
      end
    end
    def destroy
  @project = Project.find(params[:id])
  @project.destroy
  redirect_to projects_path
end
def show
  @project = Project.find(params[:id])
  render :show
end

private
  def project_params
    params.require(:project).permit(:title, :technology, :link)
  end

  end
