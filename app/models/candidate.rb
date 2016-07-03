class Candidate < ActiveRecord::Base
  has_many :issues, dependent: :destroy
end
