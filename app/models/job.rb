class Job < ApplicationRecord
  has_many :ships

  belongs_to :ship


  # accepts_nested_attributes_for :jobs, allow_destroy: true
end
