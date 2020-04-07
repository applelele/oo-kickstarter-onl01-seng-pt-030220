class Project
  #has many backers :backers
  # attr_accessor
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_instance)
    @backers << backer_instance #<Backer:0x00 @name="Steven", @backed_projects=[]>
    backer_instance.back_project(self) unless backer_instance.backed_projects.include?(self)
    #<Project:0x00 @title="  ", @backers=[#<Backer:0x00 @name="Steven", @backed_projects=[self]>]>
  end
end
