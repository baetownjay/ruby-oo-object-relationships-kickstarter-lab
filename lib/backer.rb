require 'pry'
class Backer
    attr_accessor :name 

    @@all = []
    @@projects = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def back_project(project)
        #binding.pry
        @@projects << ProjectBacker.new(project, self)
        @@projects
    end
    def self.projects
        @@projects
    end
    def self.all
        @@all
    end
    def backed_projects
        self.project
    end


end
