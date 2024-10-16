class QuestionPolicy < ApplicationPolicy
  def create?
    !user.guest?
  end

  def update?
    user.admin_role? || user.moderator_role? || user.author?(recird)
  end

  def destroy?
    user.admin_role? || user.author?(recird)
  end

  def index?
    true
  end

  def show?
    true
  end
end