class BlogController < ApplicationController
  
  def index
    @title ="HeArtMe's Blog"    
    @categories = Category.all
    @recent = Artical.order("updated_at DESC").limit(26)
    @user = User.first
  end
  
end
