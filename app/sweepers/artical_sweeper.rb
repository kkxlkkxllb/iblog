class ArticalSweeper < ActionController::Caching::Sweeper
  observe Artical
  def after_save(artical)
     expire_cache_for(artical)
  end

  def after_destroy(artical)
     expire_cache_for(artical)
  end
  
  private
  
  def expire_cache_for(artical)
     expire_page(:controller => 'articals', :action => 'show', :id => artical.id)
     expire_fragment(:controller => 'blog',  :action => 'index', :action_suffix => 'blog_owner') 
     expire_fragment(:controller => 'blog',  :action => 'index', :action_suffix => 'blog_visiter') 
  end
end