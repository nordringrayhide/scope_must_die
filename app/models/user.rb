class User < ActiveRecord::Base
  attr_protected :id, :type, :created_at, :updated_at

  has_many :rules, :foreign_key => :owner_id
end
