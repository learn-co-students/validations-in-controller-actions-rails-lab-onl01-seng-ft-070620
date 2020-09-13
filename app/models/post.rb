class Post < ActiveRecord::Base
  # validates title isn't blank...
  # category is either "Fiction" or "Non-Fiction"
  # and content is 100+ characters
  validates :title, presence: true
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validates :content, length: {minimum: 100}
end
