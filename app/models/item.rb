class Item < ActiveRecord::Base
  def self.search(search)
    if search
        where(["name LIKE ?","%#{search}%"])
        #where("content LIKE ?","%#params[:search]")
     else
        all
    end
  end
end


