class Product < ActiveRecord::Base
  attr_protected
  has_many :line_items
  has_one  :tagging
  has_one  :tag, :through => :tagging
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
  validates :title, presence: true 

  scope :tag_with, lambda{|tag_name| joins(:tags).where("tags.name = ?", tag_name)}
  #searchable do 
    #text :title, :description
  #end
end
