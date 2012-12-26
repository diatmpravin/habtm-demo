class Organization < ActiveRecord::Base
  has_and_belongs_to_many :users,
        :association_foreign_key => 'user_id',
        :class_name => 'User',
        :join_table => 'organizations_users'
  attr_accessible :address, :name
end
