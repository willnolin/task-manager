class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: %w[not-started in-progress complete] }

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    %w[Complete complete]
  ]

  def status_color
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end
end
