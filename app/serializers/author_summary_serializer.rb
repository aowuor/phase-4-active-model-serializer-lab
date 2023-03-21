class AuthorSummarySerializer < ActiveModel::Serializer
    attributes :title, :short_content

    has_one :profile
    has_many :posts
    has_many :post_tags
    has_many :tags, trough: :post_tags
    # has_many :posts, through: :post_tags

    def short_content
        "#{self.object.content[0..39]}..."
    end
  
  end