class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :find_user
  before_action :find_company

  private

  def find_user
    @user = User.first
  end

  def find_company
    @company = @user.company
  end
end
