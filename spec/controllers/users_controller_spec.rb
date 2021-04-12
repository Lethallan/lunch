require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET show' do
    let(:user) { create(:user) }
    
    before do 
      sign_in user
      get :show, params: { id: user }
    end

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end
end