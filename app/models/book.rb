class Book < ActiveRecord::Base

  scope :estimated, -> { where("difficulty IS NOT NULL") }
  scope :not_estimated, -> { where("difficulty IS NULL") }

  # MySQLだったらRAND()にしなければいけない
  # SQLiteの場合はRANDOM()
  scope :random_order, -> { order("RANDOM()") }

  scope :has_contents, -> { where("contents IS NOT ''") }

  validates :difficulty, inclusion: { in: 1..4 }

  def self.distribution(difficulty_num)
  	where(difficulty: difficulty_num).count
  end

end
