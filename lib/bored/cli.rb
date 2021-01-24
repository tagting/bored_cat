# responsible for commuincating between user and data 
require 'pry'
class CLI

    #method to entry point to CLI
    def start
        @list_facts = []
        puts "Welcome to the Cat App."
        puts "Let's start with your name: "
        
        API.get_data
        greet(user_input)
    end

    def user_input
        gets.strip
    end
  

    def greet(name)
        puts "Hi #{name} !" #!!!! regex needed here
        puts "Would you like a random cat fact?\n - Yes (y) \n - No (n)" 
        menu
    end

    #print random result
    def print_result
        puts " "
        results = GetBored.all.sample
        puts results.text
        @list_facts << results
        puts " "
        puts "Would you like a random cat fact?\n - Yes (y) \n - No (n) \n - Exit (exit) \n - List All (l)" 
        menu
    end
    
    def list_results
        # binding.pry
        @list_facts.each do |l|
            puts l.text
        end
        puts "Would you like a random cat fact?\n - Yes (y) \n - No (n) \n - Exit (exit) \n - List All (l)" 
        menu        
    end

    def goodbye
        puts "Hopefully we could help. But bye for now!"
    end

    def sorrybye
        puts "Goodbye, sorry we could not help"
    end

    def invalid
        puts "Hmmm, that doesn't seem valid, try again"
        menu
    end

    def menu
        selection = user_input
        if selection == 'y'
            print_result
        elsif selection == 'exit'
            goodbye
        elsif selection == 'n'
            sorrybye
        elsif selection == 'l'
            list_results
        else
            invalid
        end
    end 
end