class Product < ActiveRecord::Base
  attr_accessible :id, :product_configs, :product_createdby, :product_datecreated, :product_description, :product_name, :product_orgID
  belongs_to :organisation
  has_many :tasks
  has_one :organisation
  end
class Organisation < ActiveRecord::Base
  attr_accessible :id, :org_addedby, :org_addresscity, :org_addressline1, :org_addressline2, :org_addressline3, :org_addresspostcode, :org_contactname, :org_dateadded, :org_description, :org_name, :org_phonenumber, :org_website
  has_many :products
end
class Task < ActiveRecord::Base
  attr_accessible :ID_org, :ID_product, :ID_task, :task_assignedto, :task_completed, :task_completedby, :task_createdby, :task_datecreated, :task_description, :task_orgassignedto, :task_productassignedto, :task_title, :task_type
  belongs_to :products
  has_one :product
end
class TaskActivity < ActiveRecord::Base
  attr_accessible :notes, :time_taken
end