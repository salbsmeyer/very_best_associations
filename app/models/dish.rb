class Dish < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :name }
  validates :cuisine_id, :presence => true
  belongs_to :cuisines
  belongs_to :users
  belongs_to  :neighborhood
  has_many :favorites

end
