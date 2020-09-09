# frozen_string_literal: true

class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
end
