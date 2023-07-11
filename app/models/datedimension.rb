class Datedimension < ApplicationRecord
    has_many :facttables
    has_many :bookdimensions, through: :facttables
    has_many :memberdimensions, through: :facttables
end
