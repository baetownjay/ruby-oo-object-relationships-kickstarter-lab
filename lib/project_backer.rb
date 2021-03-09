class ProjectBacker
    attr_accessor :project, :backer
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end




#class ProjectBacker
#     attr_reader :project, :backer

#     @@all = []

#     def initialize(project, backer)
#         @project = project 
#         @backer = backer
#         @@all << self
#     end
#     def self.all
#         @@all
#     end
#     # def self.back_project
#     #     Backer.projects 
#     # end
#     #binding.pry
# end