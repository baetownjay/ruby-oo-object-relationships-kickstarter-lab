require 'pry'
class Backer
    attr_accessor :name, :personal_projects_list

    @@all = []
    @@projects = []

    def initialize(name)
        @name = name
        @@all << self
        @personal_projects_list = []
    end
    def back_project(project)
        @@projects << ProjectBacker.new(project, self)
        @personal_projects_list << project
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
