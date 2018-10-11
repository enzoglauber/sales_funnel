class StageHistory < ApplicationRecord
  belongs_to :opportunity
  belongs_to :stage
end
