class UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update]

  def edit
  end

  def update
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
