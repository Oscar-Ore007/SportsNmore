class SportsNmore::Players 
    attr_accessor :first_name, :last_name, :position, :id

    @@all = [] 
    
    
    def initialize(first_name,last_name,position,id) 
        @first_name = first_name 
        @last_name = last_name 
        @position = position 
        # @id = id 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
end 