class AchievementsController < ApplicationController
  def new
    @achievement = Achievement.new
  end

  def create
    @achivement = Achievement.new(achievement_params)
    if @achievement.save
      redirect_to root_url, notice: 'Achievement has been created'
    else 
      render 'new'
    end
  end

  def show
    @achievement = Achievement.find(params[:id])
  end
  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :privacy, :featured, :cover_image)
  end
end
