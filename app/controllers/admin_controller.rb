class AdminsController < ApplicationController
  def admin
    @admins = Admin.all
    render :admin
  end
  def new
    @admin = Admin.new
    render :admin
  end
  def create
    @admin = Admin.new(admin_params)
      if @admin.save
        redirect_to admin_path
      else
        render :new
      end
  end

private
   def admin_params
     params.require(:admin).permit(:name, :title)
   end
end
