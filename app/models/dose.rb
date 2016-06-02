class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail
  validates_uniqueness_of :ingredient_id, :scope => [:cocktail_id]
  validates :description, presence: true
  validates :ingredient_id, presence: true
  validates :cocktail_id, presence: true

end
