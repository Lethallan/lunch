require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do
  describe 'GET index' do
    let(:dishes) { create_list(:dish, 3) }

    before do 
      @user = create(:user)
      sign_in @user

      get :index
    end

    it 'populates an array of dishes' do
      expect(assigns(:dishes)).to match_array(dishes)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end
end
