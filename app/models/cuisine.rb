class Cuisine < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :name }
  has_many :dishes
  has_many  :venues
end
