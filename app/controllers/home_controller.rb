class HomeController < ApplicationController
  helper_method :admin_user
  def index
    @referals = Referal.all
    @projects = Project.all
    @skills = Skill.all
    @blogs = Blog.all.paginate(:per_page => 2, :page => params[:page])
    respond_to do |format|
      format.html
           format.js
    end
  end

private

def admin_user
  if current_user.email == ('shariff.mohammed.a@gmail.com')
    return true
  end
end
end
