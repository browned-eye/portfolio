class ProjectType < ActiveRecord::Base
  validates_presence_of :name
end

class Project < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: :slugged


 # validates_presence_of :slug

  def to_param
    slug
  end
  # attr_accessor :tools_arry
  # attr_accessor :skills_arry
  # attr_accessor :role_arry
  # attr_accessor :tags_arry
  # # serialize :toolbox_ids,  Array
  # serialize :skills,  Array
  # serialize :tags,  Array
  # serialize :role,  Array
  #validates_presence_of :tags
end

class Toolbox < ActiveRecord::Base
  validates_presence_of :name
end
