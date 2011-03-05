class HomeController < ApplicationController
  def index
    @title = "HeArtMe"
    @user = User.first
    @articals =  Artical.where(["top_token = ?",true])
    @articles = @articals.order("updated_at DESC")
  end
  def update_mp
    @user = current_user
    @user.update_attribute(:micropost,params[:value])
    render :text=>params[:value]
  end
  
  def update_bbc
    @user=current_user
    @user.update_attribute(:broadcast,params[:value])
    render :text=>params[:value]
  end
  
  def sitemap
    @articles = Artical.all
    render :layout => false
  end

end
