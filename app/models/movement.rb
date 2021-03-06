class Movement < ActiveRecord::Base
  belongs_to :user
  has_many :record

  def self.latest5
    latest5 = Movement.all.sort_by do |movement|
      movement.id
    end

    latest5 =  latest5.reverse[0..5]

    return latest5
  end

end
