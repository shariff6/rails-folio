class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  helper_method :admin_user
  def index
    @referals = Referal.all
    @projects = Project.all
    @skills = Skill.all
    @blogs = Blog.all.paginate(:per_page => 1, :page => params[:page])
    respond_to do |format|
      format.html
           format.js
    end
  end

private

def admin_user
  if current_user.superadmin_role?
    return true
  end
end
end
