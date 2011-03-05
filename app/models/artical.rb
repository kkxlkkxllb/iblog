class Artical < ActiveRecord::Base
  belongs_to :category
  validates :title,:presence => {:message => "is required"}
  validates :content,:presence => {:message => "is required"}
  
  def to_param
    "#{id}-#{title.gsub('.','')}"
  end
end
