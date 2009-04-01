class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = "The event was successfully updated!"
      redirect_to @event
    else
      render :action => 'edit'
    end
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "The event was added!"
      redirect_to @event
    else
      render :action => 'new'
    end
  end
end
