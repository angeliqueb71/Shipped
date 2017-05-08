class Ship < ApplicationRecord

  belongs_to :job
  belongs_to :user

  has_many :ship_jobs, :dependent => :destroy
  has_many :jobs, :through => :ship_jobs

  validates :name, uniqueness: true
  # accepts_nested_attributes_for :ship, allow_destroy: true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
