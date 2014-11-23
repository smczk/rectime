class User < ActiveRecord::Base
  has_many :movement
  has_many :point
end
