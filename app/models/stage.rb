class Stage < ApplicationRecord
  belongs_to :opportunity
  has_many :opportunities
end
