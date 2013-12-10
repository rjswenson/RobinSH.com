class PostPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      if user.present?
        scope.all
      end
    end
  end

  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def create?
    user.admin?
  end

  alias_method :update?,  :create?
  alias_method :destroy?, :create?
  alias_method :edit?,    :create?
end
