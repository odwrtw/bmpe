class Camera < ApplicationRecord
  belongs_to :experiment
  has_many :pics
end
