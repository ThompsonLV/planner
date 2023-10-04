class Task < ApplicationRecord
  validates :activity, presence: true, inclusion: { in: ["charge intellectuelle", "peu de charge intellectuelle"] }
  validates :title, :content, :duration, presence: true
end
