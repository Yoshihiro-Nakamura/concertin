class ConcertContact < ActiveRecord::Base
  belongs_to :concert
  belongs_to :contact
end
