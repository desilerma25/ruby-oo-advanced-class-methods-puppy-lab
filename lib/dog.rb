class Dog
    attr_accessor :name, :save

    @@all = []

    def initialize(name)
        @name = name
        @save = save # updated here to initialize save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        puts @@all.map {|dog| dog.name} 
        # puts (prints) @@all, .map (returns NEW array), enumerate through each dog to get the name.
    end

    def save # refactor, extract & create it's own method
        @@all << self
    end
end
