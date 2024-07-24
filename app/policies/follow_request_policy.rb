class FollowRequestPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

  def create?
    follow_request.sender == user
  end

  def update?
    user == follow_request.sender || user == follow_request.recipient
  end

  def destroy?
    update?
  end

#was missing methods:
  def show?
    true
  end

  def edit?
    update?
  end
end
