class PeopleController < ApplicationController
  
  before_filter :require_user
  
  def index
    @people = current_user.people
  end
  
  def show
  end
  
  def new
  end
  
  def create
    @person = Person.for_user(current_user.id).find_or_create_by_name(params[:person])
    @person.gifts.create(params[:gift]) unless params[:gift][:name].andand.empty?
    
    respond_to do |wants|
      wants.html { redirect_to people_url }
      wants.js { render :text }
    end

  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    @person = Person.for_user(current_user.id).find(params[:id])
    @person.destroy if @person
    redirect_to people_url
  end

end
