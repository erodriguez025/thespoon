class RestaurantsController < ApplicationController
  
  RESTAURANTS = {
    1 => { name: "piba", address: "libertador 600", category: "pinchos"},
    2 => { name: "siga la vaca", address: "parana 945", category: "parrilla"},
    3 => { name: "kansas", address: "córdoba 900", category: "american food"},
    4 => { name: "la farola", address: "santa fe 456", category: "pastas"}
  }

  def index
     @restaurants = RESTAURANTS 
  end
  
end
