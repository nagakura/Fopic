class EventController < ApplicationController

def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to(@event, :notice => 'Event was successfully created.') }

      else
        format.html { render :action => "new" }

      end
    end
  end

  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb

    end
  end


def show
   @event = Event.find(params[:id])

   respond_to do |format|
     format.html # show.html.erb
     format.json { render :json => @event }
   end
 end

  def index
    @event = Event.new
  end


end
