class EateriesController < ApplicationController
  before_action :find_company

  def index
    params[:cuisines].reject! { |c| c.empty? } if params[:cuisines]
    @eateries = @company.eateries
    @cuisines = @company.cuisines
    @selected_cuisines = params[:cuisines] ? params[:cuisines].map { |x| @cuisines.find_by(name:x) } : Cuisine.where(name: 'ajfj')
    @non_selected_cuisines = @cuisines - @selected_cuisines
  end
end
