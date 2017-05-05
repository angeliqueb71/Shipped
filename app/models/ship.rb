class Ship < ApplicationRecord
  has_many :jobs
  belongs_to :jobs

  # validates :name, uniqueness: true

  # accepts_nested_attributes_for :ship, allow_destroy: true
end
