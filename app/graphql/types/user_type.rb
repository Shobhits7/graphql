# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :first_name, String
    field :full_name, String, null: true
    field :last_name, String
    field :movies_count, Integer, null: true
    field :movies, [Types::MovieType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def full_name
      [object.first_name, object.last_name].compact.join(' ')
    end

    def movies_count
      object.movies.size
    end
  end
end
