class Organisation < ActiveRecord::Base
  attr_accessible :org_addedby, :org_addresscity, :org_addressline1, :org_addressline2, :org_addressline3, :org_addresspostcode, :org_contactname, :org_dateadded, :org_description, :org_name, :org_phonenumber, :org_website
end
