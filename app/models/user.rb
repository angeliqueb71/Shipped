class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



 has_many :ship_jobs, :dependent => :destroy
 has_many :jobs, :through => :ship_jobs

 has_many :ship_jobs, :dependent => :destroy
 has_many :ships, :through => :ship_jobs

end
