class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true

    def find_specials(com_id)
      all_specials = Special.all
      all_specials.where(comedian_id: com_id)
    end
end
