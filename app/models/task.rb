class Task < ApplicationRecord
  belongs_to :day
  validates :activity, inclusion: { in: ['Manuelle', 'Intellectuelle'] }

end
