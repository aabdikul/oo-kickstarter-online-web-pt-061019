class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_name)
    if !backer_name.backed_projects.include?(self)
      backer_name.back_project(self)
      @backers << backer_name
    end
  end

end
