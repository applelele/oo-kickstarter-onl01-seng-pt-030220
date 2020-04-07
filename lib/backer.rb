class Backer
  #has many projects
  # attr_accessor
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_instance)
    @backed_projects << project_instance #<Project:0x00 @title="Project", @backers=[]>
    project_instance.add_backer(self) unless project_instance.backers.include?(self)
    #<Backer:0x00 @name="Steven" @backed_projects=[#<Project:0x00 @title="Project", @backers=[self]>]
  end

end
