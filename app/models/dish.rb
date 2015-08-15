class Dish < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :name }
  validates :cuisine_id, :presence => true
  belongs_to :cuisines
  has_many :favorites
end
