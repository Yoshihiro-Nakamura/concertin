class Composer < ActiveRecord::Base
  has_many :songs
  has_many :concerts, through: :songs
end
