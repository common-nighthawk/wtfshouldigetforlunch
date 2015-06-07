class EateriesController < ApplicationController
  before_action :find_company

  def index
    @eateries = @company.eateries
  end
end
