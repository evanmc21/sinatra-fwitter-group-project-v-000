class User < ActiveRecord::Base
  has_many :tweets

  has_secure_password

  def slug
  self.username.gsub(" ", "-").downcase
end

def self.find_by_slug(slug) #now given the slug we can find the name!
  self.all.detect{ |username| username.slug == slug}
end
end
