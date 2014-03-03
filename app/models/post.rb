class Post < ActiveRecord::Base
  attr_accessible :text, :title, :name, :user_id
  belongs_to :user

  validates :title, :presence => true,
            :length => { :minimum => 5 }
end
