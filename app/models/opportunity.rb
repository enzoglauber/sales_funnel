class Opportunity < ApplicationRecord
  belongs_to :stage

  def self.sum_values
    sum :value
  end
end
