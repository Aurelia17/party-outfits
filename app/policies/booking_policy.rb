class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def update?
    # METTRE QUE LE PROPRIETAIRE (outift.user) peut modifier
  end

  def destroy?
    true
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
