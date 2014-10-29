class Point < ActiveRecord::Base
  validates :extra_id,
    uniqueness: { scope: [:user_id] }
end
