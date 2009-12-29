class GiftsController < ApplicationController
  
  def new
    @person = Person.find(params[:person_id])
    @gift = @person.gifts.new
    
    respond_to do |wants|
      wants.js { render :partial => 'new', :locals => {:person => @person, :gift => @gift } }
    end
  end
  
  def create
    @person = Person.find(params[:person_id])
    @gift = @person.gifts.create(params[:gift])
    
    respond_to do |wants|
      wants.js { render :partial => 'people/gift', :locals => {:person => @person, :gift => @gift} }
    end
  end
  
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
