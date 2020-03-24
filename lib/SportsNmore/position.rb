class SportsNmore::Position
    attr_accessor :position

    @@all = [] 
    
    
    def initialize(position) 
        @position = position 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
end 