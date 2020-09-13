class Author < ActiveRecord::Base
  # validates name isn't blank, email is unique
  validates :name, presence: true
  validates :email, uniqueness: true
end
