class Topic < ActiveRecord::Base
  attr_accessible :description, :name, :public, :post
  has_many :posts, dependent: :destroy
end
