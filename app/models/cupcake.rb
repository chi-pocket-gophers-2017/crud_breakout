class Cupcake < ActiveRecord::Base
  validates :flavor, presence: true

end
