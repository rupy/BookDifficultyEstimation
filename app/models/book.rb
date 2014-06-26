class Book < ActiveRecord::Base

  scope :estimated, -> { where("difficulty IS NOT NULL") }

  # MySQLだったらRAND()にしなければいけない
  scope :random_record, -> { order("RANDOM()") }

  scope :has_contents, -> { where("contents IS NOT ''") }

end
