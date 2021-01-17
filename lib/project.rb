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
        binding.pry
        @backers_names_list << backer
        #binding.pry
        ProjectBacker.new(self, backer)
    end
    def backers
        #binding.pry
        @backers_names_list
        binding.pry
    end

end