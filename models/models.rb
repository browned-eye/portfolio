class ProjectType < ActiveRecord::Base
  validates_presence_of :name
end

class Project < ActiveRecord::Base
  attr_accessor :tools
  attr_accessor :skills_str
  attr_accessor :role_str
  serialize :toolbox_ids
  serialize :skills
  serialize :tags
  serialize :role
  #validates_presence_of :tags
end

class Toolbox < ActiveRecord::Base
  validates_presence_of :name
end
