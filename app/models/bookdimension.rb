class Bookdimension < ApplicationRecord
    has_many :facttables
    has_many :datedimensions, through: :facttables
    has_many :memberdimensions, through: :facttables
end
