class AdminsController < ApplicationController
  def index
    @admins = Admin.all
    render :index
  end
  def new
    @admin = Admin.new
    render :new
  end
  def create
    @admin = Admin.new(admin_params)
      if @admin.save
        redirect_to admins_path
      else
        render :new
      end
  end
  def show
   @admin = Admin.find(1)
   render :show
  end

private

   def admin_params
     params.require(:admin).permit(:name, :title)
   end

end
