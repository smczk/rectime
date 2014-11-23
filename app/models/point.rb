class Point < ActiveRecord::Base
  belongs_to :user
  has_many :record

  validates :extra_id,
    uniqueness: { scope: [:user_id] }
end
