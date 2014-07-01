class Book < ActiveRecord::Base

  # 難易度付けがされているか
  scope :estimated, -> { where("difficulty IS NOT NULL") }
  scope :not_estimated, -> { where("difficulty IS NULL") }

  # MySQLだったらRAND()にしなければいけない
  # SQLiteの場合はRANDOM()
  scope :random_order, -> { order("RANDOM()") }

  #目次を持っているか
  scope :has_contents, -> { where("contents IS NOT ''") }

  # 難易度が範囲内に収まっているか
  validates :difficulty, inclusion: { in: 1..4 }

  def self.distribution
  	distribution = estimated.group('difficulty').count.map{|row| [row[0], row[1]]}
    4.times do |i|
      distribution.push([i + 1, 0]) unless distribution.assoc(i + 1)
    end
    distribution
  end

end
