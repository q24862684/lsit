class Todo < ApplicationRecord
  validates_presence_of :title, :start_date, :due_date, :description
  def can_destroy
    !overdue
  end

  private
  def overdue
    Date.today > due_date
  end
end
