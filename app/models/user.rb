class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins
  #checks that a user password contains 6 characters, 1 num, 1 symbol, 1 uppercase letter, 1 lowercase letter
  #validates :password, :presence => true,
  #          :on => :create,
  #          :format => {:with => /\A.*(?=.{6,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\!\?\*\$\%\^\&\+\=]).*\Z/ }

  validates :name, presence: true
end
