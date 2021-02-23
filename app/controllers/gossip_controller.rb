class GossipController < ApplicationController
  
  def index
    @gossips = Gossip.all
  end
  
  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.create(gossip_params)
    puts @gossip
    redirect_to gossip_index_path
    # if @gossip.save 
    #   redirect_to gossip_index_path
    # else
    #   render 'new'
    # end    
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])

    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy

    redirect_to gossip_path
  end

  private
    def gossip_params
      params.require(:gossip).permit(:title, :content, :user_id)
    end

end
