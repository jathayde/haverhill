class EventsController < ApplicationController
  before_filter :authenticate, :only => [:new, :edit, :create, :update, :destroy]
  
  def index
    @page_title = "Events"
    year  = params[:year] ? params[:year].to_i : Time.now.year
    month = params[:month] ? params[:month].to_i : Time.now.month
    @month = Date.new(year, month)
    @events = Event.month_calendar_events_for(@month)
  end
  
  def show
    @event = Event.find(params[:id])
    @page_title = "Event Detail | #{@event.name}"
  end
  
  def new
    @event = Event.new(:happens_on => default_event_date, :happens_at => default_event_time)
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
  
  def set_body_id!
    @body_id = "events"
  end
  
  def default_event_date
    "MM/DD/YYYY"
  end
  
  def default_event_time
    "00:00"
  end
  helper_method :default_event_date
  helper_method :default_event_time
end
