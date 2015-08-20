class Neighborhood < ActiveRecord::Base
  validates :name, :presence => true
  #validates :uniqueness => { :scope => :city}
  has_many :venues

  def favorite
    return Favorite.find_by(:id => self.user_id)
  end

  def user
    return User.find_by(:id => self.user_id)
  end

  def venue
    return Venue.find_by(:id => self.name)
  end

class Neighborhood < ActiveRecord::Base
  has_many :venues
  has_many :favorites, :through => :venues
end

end

