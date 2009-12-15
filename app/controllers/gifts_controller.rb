class GiftsController < ApplicationController
  
  def buy
    @gift = Gift.for_person(params[:person_id]).find(params[:id])
    if @gift
      @gift.toggle!(:bought)
    end
    redirect_to people_url
  end
  
  def destroy
    @gift = Gift.for_person(params[:person_id]).find(params[:id])
    @gift.destroy if @gift
    redirect_to people_url
  end
end
