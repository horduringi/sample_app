class Institute < ActiveRecord::Base
  attr_accessible :address, :name
  has_many :users
end
