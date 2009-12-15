class Person < ActiveRecord::Base
  has_many :gifts
  # accepts_nested_attributes_for :gifts
  
  named_scope :for_user, lambda { |id| { :conditions => {:user_id => id } } }

end
