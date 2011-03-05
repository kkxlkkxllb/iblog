class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
    before_filter :require_user, :only => [:edit, :update]
    def new
      @title = "Register"
      @user = User.new
    end

    def create
      @user = User.new(params[:user])
      if @user.save      
         create_category("语录文摘")
          create_category("Rails笔记")
          create_category("文艺复兴")
          create_category("旅行游记")
          create_category("活动召集")
          create_category("人物收藏")
          create_category("诗与歌词")
          create_category("关注未来")
          create_category("个人情感")
        redirect_back_or_default root_path
      else
        flash[:error] = "Please check something wrong!try again"
        redirect_to :action => :new
      end
    end
    
     def edit
        @title ="Edit account"
          @user = @current_user
      end

      def update
        @user = @current_user # makes our views "cleaner" and more consistent
        if @user.update_attributes(params[:user])
          redirect_to account_url, :notice => 'Account updated!'
        else
          flash[:error] = "Please check something wrong!"
          redirect_to :action => :edit
        end
      end
      
       private
        def create_category(title)
          @category = Category.new(:title=>title )
          @category.save
        end
end
