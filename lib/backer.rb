class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_name)
    @backed_projects << project_name
    if !project_name.backers.include?(self)
      project_name.add_backer(self)
    end
  end

end
