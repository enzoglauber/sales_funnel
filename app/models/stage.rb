class Stage < ApplicationRecord
  belongs_to :opportunity
  has_many :opportunities, -> { order(:updated_at => :desc) }
end
