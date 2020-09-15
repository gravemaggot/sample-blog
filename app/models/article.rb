# frozen_string_literal: true

# Blog's articles object
class Article < ApplicationRecord
  validates :title, presence: true
  validates :text,  presence: true
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
