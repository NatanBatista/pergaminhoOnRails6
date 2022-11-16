class BookPolicy
  # class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    attr_reader :user, :book

    def initialize(user, book)
      @user = user
      @book = book
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

