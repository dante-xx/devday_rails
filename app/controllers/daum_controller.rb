class DaumController < ApplicationController
  def search
    @items = Video.search(params[:q])['item']
    @items.concat Image.search(params[:q])['item']
    render :partial => "item", :collection => @items
  end
end
