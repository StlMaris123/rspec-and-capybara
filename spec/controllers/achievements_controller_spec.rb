require 'rails_helper'

RSpec.describe AchievementsController, type: :controller do
  describe "Get new" do
    it"renders :new template " do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns new Achievement to @achievement" do
      get :new
      expect(assigns(:achievement)).to be_a_new(Achievement)
    end
  end

end
