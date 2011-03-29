class Ability
  include CanCan::Ability

  def initialize(account)
    account ||= Account.new # guest account (not logged in)
    if account.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end
