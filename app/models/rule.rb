class Rule < ActiveRecord::Base
  attr_protected :id, :type, :created_at, :updated_at

  belongs_to :owner, :class_name => 'User', :foreign_key => :owner_id

  scope :active_only, lambda { where(:active => true) }

  class << self
    def active
      where(:active => true)
    end
  end
end
