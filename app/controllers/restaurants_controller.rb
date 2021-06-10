class RestaurantsController < ApplicationController
  
  RESTAURANTS = {
    1 => { name: "piba", address: "libertador 600", category: "pinchos"},
    2 => { name: "siga la vaca", address: "parana 945", category: "parrilla"},
    3 => { name: "kansas", address: "córdoba 900", category: "american food"},
    4 => { name: "la farola", address: "santa fe 456", category: "pastas"}
  }

  def index
    @restaurants = if params[:food_type].present?
      RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == params[:food_type]
      end
    else
      RESTAURANTS
    end
  end

  def create
    render plain: "crearía el restaurant #{params[:name]} en la dirección #{params[:address]}"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]    
  end
  
  
  
end
