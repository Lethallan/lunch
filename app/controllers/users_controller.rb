class UsersController < ApplicationController
  before_action :find_user, only: %i[show]

  def find_user
    @user = User.find(params[:id])
  end
end
