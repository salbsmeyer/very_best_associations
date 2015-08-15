class Neighborhood < ActiveRecord::Base
  validates :name, :presence => true
  #validates :uniqueness => { :scope => :city}
  has_many :venues
end

