class Job < ApplicationRecord

  belongs_to :ship

  has_many :ship_jobs, :dependent => :destroy
  has_many :ships, :through => :ship_jobs

  validates :title, uniqueness: true
  validates :body, length: {minimum: 50}
  validates :cost, :numericality => {greater_than: 1000}

  # accepts_nested_attributes_for :jobs, allow_destroy: true
end
