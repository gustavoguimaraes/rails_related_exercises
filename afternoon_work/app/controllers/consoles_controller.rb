class ConsolesController <ApplicationController

  def index
    @consoles = Console.all
  end

  def show
    @console = Console.find(params[:id])
  end

  def new
    @console = Console.new
    @console.game_id = :game_id
  end

  def create
    debugger
    @console = Console.new(params[:console])
      current_game = :game_id
      @console.game_id = current_game
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