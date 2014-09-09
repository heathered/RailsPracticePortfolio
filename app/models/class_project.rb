class ClassProject < ActiveRecord::Base
  attr_accessible :desc, :name, :url
  
  validates :name, presence: true
  validates :desc, presence: true
  validates :url, presence: true
end
