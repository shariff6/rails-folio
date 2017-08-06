class SkillsController < ApplicationController
    def new
      @admin = Admin.find(params[:admin_id])
      @skill = @admin.skills.new
    end
end
