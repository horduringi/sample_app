class Institute < ActiveHash::Base
  self.data = [{ id: 1, name: "Kreftens bekæmpelse", address: "Copenhagen", created_at: "2013-10-26 18:59:06", updated_at: "2013-10-26 18:59:06"}]
  include ActiveHash::Associations
  has_many :users
end
