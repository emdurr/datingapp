class Profile < ApplicationRecord
  belongs_to :user
  def self.search(search)
  	where("name ILIKE ? OR age ILIKE ? OR gender ILIKE ? OR eye_color ILIKE ? OR hair_color ILIKE ? OR height ILIKE ? OR ethnicity ILIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
