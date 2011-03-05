class Image < ActiveRecord::Base
  validates :url,:presence => {:message => "can't blank"}
end
