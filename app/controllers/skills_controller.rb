class SkillsController < ApplicationController
    before_action :before_filter, :only => [:new, :create]
    skip_before_action :authenticate_user!, :only => [:index]
  def index
    @skills = Skill.all
    render :index
  end
    def new
      @skill = Skill.new
      render :new
    end
    def create
      @skill = Skill.new(skill_params)
      if @skill.save
        redirect_to skills_path
      else
        render :new
      end
    end

    private
      def skill_params
        params.require(:skill).permit(:skill, :mastery)
      end
      def before_filter
        if user_signed_in?
          redirect_to root_path unless current_user.email == ('shariff.mohammed.a@gmail.com')
          else
            redirect_to new_user_session_path
        end
      end
end
