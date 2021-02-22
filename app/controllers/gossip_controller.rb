class GossipController < ApplicationController
  
  def index
    render 'index'
  end
  
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts params[:id]
    puts "$" * 60
  end

  def new

  end

  def create
    @gossip = Gossip.new('title' => params[:title],
                          'content' => params[:content],
                          'user_id' => 12)

    if @gossip.save 
      redirect_to gossip_path
    else
      render 'new'
    end    
  end

  def edit

  end

  def update
    
  end

  def destroy

  end

end
