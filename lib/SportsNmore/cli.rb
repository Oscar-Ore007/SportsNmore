class SportsNmore::CLI

def call 
    SportsNmore::API.get_players
    welcome  
    display_def 
    more_options 
    loop_or_exit 
end 

def welcome 
    print " 
    ╦ ╦┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐  ╔═╗┌─┐┌─┐┬─┐┌┬┐┌─┐╔╗╔┌┬┐┌─┐┬─┐┌─┐
    ║║║├┤ │  │  │ ││││├┤    │ │ │  ╚═╗├─┘│ │├┬┘ │ └─┐║║║││││ │├┬┘├┤ 
    ╚╩╝└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘  ╚═╝┴  └─┘┴└─ ┴ └─┘╝╚╝┴ ┴└─┘┴└─└─┘                                                
                                                                    
    ".green

    puts "
    <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
    ".red
end 


def players 
    puts "Which NBA player would you like to look up?"
    input = gets.chomp.downcase
    # binding.pry 
    # SportsNmore::API.get_players(input)
    loop_or_exit 
end 


def display_def
    SportsNmore::Players.all.each.with_index(1) do |p,index|
        puts "#{index}. #{p.first_name} #{p.last_name}"
        puts "-------------------------------------------"
end 
end 


def more_options 
   puts "Would you like to narrow down your search? Please select a number between 1-100"
   input = gets.chomp.to_i
   index = input - 1 
   user_choice = SportsNmore::Players.all[index]
   puts "You selected : #{user_choice.first_name} #{user_choice.last_name}"
end 


def loop_or_exit 
    puts "Would you like to see the the position of the player that you selected? Enter y/n ".yellow
    input = gets.chomp.downcase
    if input == "y" 
        call
        puts "#{input.position}"
    else 
        puts "Sounds good, tell your friends about us!".green 
        new_input = gets.chomp.downcase
    end 
    end 

    def display_all_players
        SportsNmore::Players.all.each.with_index(1) do |p,index|
            puts "#{p.position.position}"
        end 
    end 
    def history(input)
        if input == "y"
            display_all_players
            loop_or_exit 
        else
            exit 
        
        end
    end 
end 

