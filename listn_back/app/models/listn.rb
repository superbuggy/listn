class Listn < ApplicationRecord
  has_many :notes, dependent: :destroy
end
