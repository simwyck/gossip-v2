class GossipsController < ApplicationController

  before_action :authenticate_admin!

  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.create(gossip_params)
    current_admin.gossips << @gossip
    @gossip.save
    redirect_to @gossip
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)
    redirect_to gossip_path
    flash[:success] = "Gossip updated!"
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
    flash[:success] = "Gossip successfully deleted!"
  end

  def mygossips
  end

  private

  def gossip_params
    params.require(:gossip).permit(:anonymous_author, :content, :gossiper_id)
  end

end
