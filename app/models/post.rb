class Post < ApplicationRecord
  self.abstract_class =true
  has_one_attached :upload_image
  validates_presence_of :user_id

  before_save do
    category.downcase!
  end

  def self.all_categories
    self.pluck(:category).uniq
  end

  def self.with_categories(categories)
    self.where :category => categories
  end

end
