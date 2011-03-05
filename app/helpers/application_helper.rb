module ApplicationHelper
  def time_begin(article)
    article.created_at.strftime('%Y-%m-%d')
  end
    
  def time_update(article)
    article.updated_at.strftime('%Y-%m-%d')
  end
end
