class Hotel < ActiveRecord::Base

	belongs_to :user

	validates :name,    presence: true
  validates :price,   presence: true
  validates :number,  presence: true
  validates :rating,  presence: true
  validates :price,   numericality: {greater_than: 0}
  validates :rating,  inclusion: 1..5

  def self.top(num)
  	order('rating desc').limit(num)
  end
end