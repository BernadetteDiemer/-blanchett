class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user
  end

  def show?
    record.user == user
  end

  def update_status?
    record.user == user || record.art_service.user == user
  end
end
