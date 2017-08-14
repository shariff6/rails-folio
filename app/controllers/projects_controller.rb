class ProjectsController < ApplicationController
  before_action :authenticate_user!
  def index
    if user_signed_in?
          @projects = Project.all
      render :index
    else
      redirect_to new_user_session_path
    end
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
  @projects = Project.all
  @project = Project.find(params[:id])
  render :show
end

private
  def project_params
    params.require(:project).permit(:title, :technology, :link, :description, :image)
  end

  end
