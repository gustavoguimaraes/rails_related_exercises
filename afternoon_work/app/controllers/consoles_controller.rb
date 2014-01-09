class ConsolesController <ApplicationController

  def index
    @consoles = Console.all
  end

  def show
    @console = Console.find(params[:id])
  end

  def new
    @console = Console.new
  end

  def create
    @console = Console.new(params[:console])
      @console.game_id = :id
    if @console.save
      redirect_to @console
    else
      render "new"
    end
  end

  def edit 
    @console = Console.find(params[:id])
  end

  def update
    @console = Console.find(params[:id]) 
    if @console.update_attributes(params[:console])
      redirect_to @console
    else
      render "edit"
    end
  end

  def destroy
    @console = Console.find(params[:id])
    @console.destroy
    redirect_to consoles_url
  end


end