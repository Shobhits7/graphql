module Types
  class QueryType < Types::BaseObject
    # Get all users
    field :users, [Types::UserType], null: false

    def users
      User.includes(:movies).all
    end

    # Get a specific user
    field :user, Types::UserType, null: false do
      argument :id, ID, required: false
      argument :email, String, required: false
    end

    def user(id: nil, email: nil)
      return User.includes(:movies).find_by(email: email) if email.present?
      User.includes(:movies).find(id)
    end
  end
end
