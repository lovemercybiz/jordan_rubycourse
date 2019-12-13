class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable - send a confirmation link
  # :lockable - lock user out due to failed login attempts
  #:timeoutable - Log user out/Your session ended type thing

  # :omniauthable - Adds third-party login options ex: log in with facebook
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end
