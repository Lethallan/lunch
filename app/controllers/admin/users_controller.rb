class Admin::UsersController < Admin::BaseController
  before_action :find_user, only: %i[show]

  def all_users
    @users = User.all
  end

  def show
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
