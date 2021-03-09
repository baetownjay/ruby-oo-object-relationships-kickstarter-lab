class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
       
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer = ProjectBacker.all.select{|project| project.backer == self}
        backer.map{|bkd_project| bkd_project.project}
    end
   
end





# require 'pry'
# class Backer
#     attr_accessor :name, :personal_projects_list

#     @@all = []
#     @@projects = []

#     def initialize(name)
#         @name = name
#         @@all << self
#         @personal_projects_list = []
#     end
#     def back_project(project)
#         #binding.pry
#         @project = project
#         @@projects << ProjectBacker.new(project, self)
#         @personal_projects_list << project
#         @@projects
#     end
#     def self.projects
#         @@projects
#     end
#     def self.all
#         @@all
#     end
#     def backed_projects
#         @personal_projects_list
#         #binding.pry
#     end
# end
