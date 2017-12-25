class BinaryGameController < ApplicationController
  
  def welcome
  end
  
  def start
    @player = params["player"]
  end
  
end