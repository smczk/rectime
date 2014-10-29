class Point < ActiveRecord::Base
  validates :user_id,
    uniqueness: { scope: [:extra_id] }
end
