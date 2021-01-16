require 'pry'
class Backer
    attr_accessor :name, :list

    @@all = []
    @@projects = []

    def initialize(name)
        @name = name
        @@all << self
        @personal_projects_list = []
    end
    def back_project(project)
        #binding.pry
        @@projects << ProjectBacker.new(project, self)
        @personal_projects_list << project
        @@projects
    end
    def self.projects
        @@projects
    end
    def self.all
        @@all
    end
    def backed_projects
        @personal_projects_list
    end
end
