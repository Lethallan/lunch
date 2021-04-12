require 'rails_helper'

RSpec.describe DishesController, type: :controller do
  describe 'GET show' do
    let(:dish) { create(:dish) }
    
    before do 
      @user = create(:user)
      sign_in @user
      get :show, params: { id: dish }
    end

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end
end