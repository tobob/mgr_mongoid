class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String

  embedded_in :post

  def post_id
    post.id
  end
end
