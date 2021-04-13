require 'rails_helper'

RSpec.describe DishesController, type: :controller do
  describe 'GET show' do
    let(:user) { create(:user) }
    let(:dish) { create(:dish) }
    
    before do 
      sign_in user
      get :show, params: { id: dish }
    end

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end
end
