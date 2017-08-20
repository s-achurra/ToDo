class Todo < ApplicationRecord

  validates :title, :due_date, presence: true
  validates :completed, inclusion: { in: [ true, false ] }

  def past_due?
    Date.today > self.due_date && !completed
  end

end
