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

    def create?
      false
    end

    def new?
      true
    end
end

