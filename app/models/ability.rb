class Ability
  include CanCan::Ability

  def initialize(current_user)
    current_user ||= User.new # guest user (not logged in)
    if current_user.admin?
      can :manage, :all
    else
      can :manage, User, :id => current_user.id
      can :read, :all
    end
  end
end
