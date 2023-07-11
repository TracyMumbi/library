class Memberdimension < ApplicationRecord
    has_many :facttables
    has_many :bookdimensions, through: :facttables
    has_many :datedimensions, through: :facttables
end
