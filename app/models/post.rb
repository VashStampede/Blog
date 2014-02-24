class Post < ActiveRecord::Base
  attr_accessible :text, :title
  belongs_to :user
  validates :title, :presence => true,
            :length => { :minimum => 5 }
end
