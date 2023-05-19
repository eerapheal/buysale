# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user

    if user.has_role?(:admin)
      can :manage, :all
    elsif user.has_role?(:vendor)
      can :create, Product
      can :update, Product, user_id: user.id
      # Add other permissions for vendors
    elsif user.has_role?(:customer)
      can :read, Product
      # Add other permissions for customers
    else
      can :read, Product
      # Add permissions for guest users
    end
  end
end
  