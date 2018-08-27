# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :content
  belongs_to :user
end
