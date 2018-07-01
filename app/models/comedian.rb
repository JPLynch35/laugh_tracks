class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

  def special_count
    specials.count
  end
end
