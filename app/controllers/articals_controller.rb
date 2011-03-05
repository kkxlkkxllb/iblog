class ArticalsController < ApplicationController
    cache_sweeper :artical_sweeper, :only => [:create, :update, :destroy]
    caches_page :show
  before_filter :require_user,:only =>[:new,:edit,:create,:update,:destroy]
  # GET /articals/new
  # GET /articals/new.xml
  def new
    @title ="New Artical"
    @artical = Artical.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artical }
    end
  end
  
  def show
    @artical = Artical.find(params[:id])
    @title = @artical.title
    @category = Category.find(@artical.category_id)
  end

  # GET /articals/1/edit
  def edit
    @title ="Edit Artical"
    @artical = Artical.find(params[:id])
  end

  # POST /articals
  # POST /articals.xml
  def create
    @artical = Artical.new(params[:artical])

    respond_to do |format|
      if @artical.save
        format.html { redirect_to blog_path }
        format.xml  { render :xml => @artical, :status => :created, :location => @artical }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @artical.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articals/1
  # PUT /articals/1.xml
  def update
    @artical = Artical.find(params[:id])

    respond_to do |format|
      if @artical.update_attributes(params[:artical])
        format.html { redirect_to blog_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @artical.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articals/1
  # DELETE /articals/1.xml
  def destroy
    @artical = Artical.find(params[:id])
    @artical.destroy

    respond_to do |format|
      format.html { redirect_to blog_path }
      format.xml  { head :ok }
    end
  end
  
  # rss feed
  def rss
    
    @articals = Artical.find(:all,:order => 'updated_at DESC',:limit => 10)
    
    respond_to do |format|
      response.headers['Content-Type'] = 'application/rss+xml'
      format.rss {render :layout => false}
    end
  end
  
 
end
