class Wallpost
  include Mongoid::Document

  belongs_to :user

  field :created, type: DateTime
  field :post_comment, type: String
end
