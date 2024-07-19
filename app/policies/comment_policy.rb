class CommentPolicy < ApplicationPolicy
  attr_reader :current_user, :comment

  def initialize(current_user, comment)
    @current_user = current_user
    @comment = comment
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    current_user == comment.author
  end

  def update?
    current_user == comment.author
  end

  def destroy?
    current_user == comment.author
  end
end
