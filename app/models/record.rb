class Record < ActiveRecord::Base
  belongs_to :movement
  belongs_to :point
end
