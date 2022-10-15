class Training < ApplicationRecord
  belongs_to :user
  belongs_to :host

  # validate :after_today
  # validate :after_start_date

  # def after_today
  #   unless date > Date.today
  #     errors.add(:date, "should be after today")
  #   end
  # end

  # def after_start_date
  #   unless end_time >= begining
  #     errors.add(:end_time, "must be the same or after your start time")
  #   end
  # end
end
