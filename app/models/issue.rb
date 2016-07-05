class Issue < ActiveRecord::Base
  belongs_to :candidate
  after_initialize :set_defaults, unless: :persisted?
# The set_defaults will only work if the object is new

def set_defaults
  self.immigration  ||= ''
  self.net_neutrality  ||= ''
  self.climate_change ||= ''
  self.gun_control   ||= ''
  self.intellectual_property  ||= ''
  self.marijuana  ||= ''
  self.election_cycle   ||=2016
end

end
