class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:site_admin], multiple: false)                                      ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable - send a confirmation link
  # :lockable - lock user out due to failed login attempts
  #:timeoutable - Log user out/Your session ended type thing

  # :omniauthable - Adds third-party login options ex: log in with facebook
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

        validates_presence_of :name

        has_many :comments, dependent: :destroy

         def first_name
            self.name.split.first
         end 
         
         def last_name
          self.name.split.last
        end
end
