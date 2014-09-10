class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  
  def excerpt
    self.body.slice(0,30)
  end
  
  def relative_length
    if self.body.length <= 50
      "Short"
    elsif self.body.length >= 51 && self.body.length <= 100
      "Medium"
    else
      "Long"
    end
  end
  
end
