class OutfitPolicy < ApplicationPolicy

  def show?
    true
  end

  def create?
    user.is_owner == true
  end

  def update?
    record.user == user || user.admin
    # record: the restaurant passed to the `authorize` method in controller
    # user: the `current_user` signed in with Devise
  end

  def destroy?
    record.user == user || user.admin
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
