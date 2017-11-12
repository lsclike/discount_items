class Search < ActiveRecord::Base
  def search_items
      items = Item.all
      
      items = items.where(["name LIKE ?","%#{discount_rate}"]) if discount_rate.present?
      items = items.where("name LIKE ?",category) if category.present?
      items = items.where(["name LIKE ?","%#{business}"]) if business.present?
      items = items.where(["name LIKE ?","%#{location}"]) if location.present?
      items = items.where(["name LIKE ?","%#{time}"]) if time.present?
    
    items
    
    
    end
end
