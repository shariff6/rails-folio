class SkillsController < ApplicationController
    def new
      @admin = Admin.find(params[:admin_id])
      @skill = @admin.skills.new
    end
    def create
      @admin = Admin.find(params[:admin_id])
      @skill = @admin.skills.new(skill_params)
      if @skill.save
        redirect_to admin_path(@admin.skills)
      else
        render :new
      end
    end

    private
      def skill_params
        params.require(:skill).permit(:admin_id, :skill, :mastery)
      end
end
