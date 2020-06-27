class Place < ApplicationRecord
  def self.search(search)
    if search
      Place.where(['name LIKE ?', "%#{search}%"])
    else
      Place.all
    end
  end
end
