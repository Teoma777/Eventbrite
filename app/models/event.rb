class Event < ApplicationRecord
	#validate :event_date_cannot_be_in_the_past
	validates :start_date, presence: true 
	validates :duration, presence: true 
	validates :title, presence: true, length: { in: 5..140 }
	validates :description, presence: true, length: { in: 20..1000 } 
	validates :price, presence: true,  length: { in: 1..1000 }, numericality: { only_integer: true , greater_than: 0  }
	validates :location, presence: true 


  def event_date_cannot_be_in_the_past
    errors.add(:expiration_date, "can't be in the past") if
      !expiration_date.blank? and expiration_date < Date.today
  end
	

	has_many :attendances
	has_many :users, through: :attendances
	belongs_to :users, optional: true


end
