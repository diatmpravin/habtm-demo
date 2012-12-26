class User < ActiveRecord::Base
  has_and_belongs_to_many :organizations,
        :association_foreign_key => 'organization_id',
        :class_name => 'Organization',
        :join_table => 'organizations_users'
  attr_accessible :name, :phone
end
