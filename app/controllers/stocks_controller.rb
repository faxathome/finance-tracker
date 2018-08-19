class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash.now[:danger] = "You are searching for nothing :S "
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "Incorrect stock ticker symbol" unless @stock
    end
    respond_to do |format|
    format.js {render partial: 'users/result'}
    end
  end
end
