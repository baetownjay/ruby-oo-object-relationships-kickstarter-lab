class Project
    attr_reader :title 
    attr_accessor :backers_names_list
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
        @backers_names_list = []
    end
    def self.all
        @@all
    end
    def add_backer(backer)
        @backers_names_list << backer
        ProjectBacker.new(self, backer)
    end
    def backers
        @backers_names_list
    end

end