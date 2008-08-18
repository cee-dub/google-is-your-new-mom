class Perk < ActiveRecord::Base
  named_scope :published, :conditions => {:published => true}
end
