class SkillsController < ApplicationController
  def index
  	@skills = Skill.all
  end

  def new
  	@skill = Skill.new
  end

  #def create
 # 	@skill = Skill.new(skill_params)
  #end

  # private
  # def skill_params
  # 	params.require(:skill).permit(:skill)
  # end
end
