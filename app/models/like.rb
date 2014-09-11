class Like < ActiveRecord::Base
  attr_accessible :article_id, :ip_address
  
  def liked?
    all = Like.all
    
    all.each do |a|
      if a.ip_address == request.remote_ip
        true
      else
        false
      end
    end
  end
  
  
end
