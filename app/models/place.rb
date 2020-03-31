class Place < ApplicationRecord
  belongs_to :place, optional: true
end
