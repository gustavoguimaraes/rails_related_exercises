class EntriesController < ApplicationController
  
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(params[:entry]) #it' s entry because of the magic.
    if @entry.save #if true
     redirect_to @entry
    else
      render "new"
    end 
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update_attributes(params[:entry])
      redirect_to @entry
    else
      render "edit"
    end
  end

  def destroy
    # @entry = Entry.find(params[:id])
  end



end
