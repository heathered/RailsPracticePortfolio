class ClassProject < ActiveRecord::Base
  attr_accessible :desc, :name, :url, :class_project_ids, :tag_ids, :featured
  has_and_belongs_to_many :tags
  
  validates :name, presence: true
  validates :desc, presence: true
  validates :url, presence: true
end
