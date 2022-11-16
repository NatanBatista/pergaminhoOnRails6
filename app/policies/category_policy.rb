class CategoryPolicy
  attr_reader :user, :category

    def initialize(user, category)
      @user = user
      @category = category
    end


    def index?
      true
    end

    def show?
      true
    end

    def create?
      user.admin?
    end

    def new?
      user.admin?
    end

    def edit?
      user.admin?
    end

    def update?
      user.admin?
    end

    def destroy?
      user.admin?
    end
end
