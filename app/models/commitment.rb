class Commitment < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :description
end
