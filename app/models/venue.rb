class Venue < ActiveRecord::Base
    validates :name, :uniqueness => { :scope => :address }
    validates :name, :presence => true
    validates :neighborhood_id, :presence => true
    has_many :favorites
    belongs_to :cuisine
    belongs_to :neighborhood
end
