class MeController < ApplicationController
  def index
    @title ="All about HeArtMe"
    @user =User.first
     @images = Image.all
  end
  
  def update_info
    @user=current_user
    @user.update_attribute(:aboutme,params[:value])
    render :text => params[:value]
  end
  
  def update_tel
    @user=current_user
    @user.update_attribute(:twitter,params[:value])
    render :text => params[:value]
  end
  
  def comment_new
    @comment = Comment.new
    respond_to do |format|
      format.js
    end
  end
  
  def deliver_comment
    @comment = Comment.new(params[:comment])
    if CommentMailer.contact_to_me(@comment).deliver
      redirect_to me_path
    else
      render :text => "Something Wrong!"
    end
  end
end
