class StcocksController < ApplicationController
  
  def search
    if params[:stock]
     @stock = Stock.find_by_ticker(params[:stock])
     @stock ||= Stcok.new_from_lookup(params[:stock])
    end
  
    if @stock
      #render json: @stock
      render partial: 'lookup'
    else
      render status: :not_found, nothing: true
    end
  end
  
  
end

