class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :content, type: String

  embeds_many :comments
  accepts_nested_attributes_for :comments
end
