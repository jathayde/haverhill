class StoriesController < ApplicationController
  before_filter :authenticate, :only => [:new, :edit, :create, :update, :destroy]
  
  def show
    @page_title = "News"
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(params[:story])
    if @story.save
      flash[:notice] = "Your story has been added."
      redirect_to stories_url
    else
      render :action => 'new'
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def index
    @stories = Story.recent
  end

  private
    def set_body_id!
       @body_id = "news"
    end

end
