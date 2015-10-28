class Contact < ActiveRecord::Base
  has_many :concert_contacts
  has_many :concerts, through: :concert_contacts
end
