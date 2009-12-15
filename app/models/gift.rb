class Gift < ActiveRecord::Base
  belongs_to :person
  
  named_scope :for_person, lambda { |id| { :conditions => {:person_id => id } } }
end
