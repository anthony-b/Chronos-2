class Product < ActiveRecord::Base
  attr_accessible :id, :product_configs, :product_createdby, :product_datecreated, :product_description, :product_name, :product_orgID, :organisation_id
  belongs_to :organisation
  has_many :tasks
  end