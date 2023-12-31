# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
      user ||= User.new # guest user
      
      if user.admin?
        can :manage, Pet
      else
        can :read, Pet, user_id: user.id 
        
      end
  end
end
