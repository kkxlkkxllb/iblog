class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
    before_filter :require_user, :only => :destroy
    def new
      @title = "Login"
      @user_session = UserSession.new
    end

    def create
      @user_session = UserSession.new(params[:user_session])
      if @user_session.save
       
        redirect_back_or_default(root_path)
      else
        flash[:error]="Please check something wrong!"
        redirect_to :action => :new
      end
    end

    def destroy     
      current_user_session.destroy
  
      redirect_back_or_default root_path
    end
end
