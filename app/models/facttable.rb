class Facttable < ApplicationRecord
    belongs_to :bookdimension
    belongs_to :datedimension
    belongs_to :memberdimension
end
