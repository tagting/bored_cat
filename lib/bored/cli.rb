# responsible for commuincating between user and data 
class CLI

    #method to entry point to CLI
    def start
        puts "Welcome to the Bored App."
        puts "Let's start with your name:"
        API.get_data
       
        greet(user_input)
       
    
    end

    def user_input
        gets.strip
    end
  

    def greet(name)
        puts "Hi #{name} !" #!!!! regex needed here
        puts "Would you like a random activity?\n -Yes (y) \n -No (n)" 
        menu
    end

    #print random result
    def print_result
        binding.pry
        GetBored.all
    end
       

    def activity_details
        # GetBored.all.each do |r|
        #     puts r.activity
        # end
    end

    def goodbye
        puts "Hopefully we could help. But bye for now!"
    end

    def sorrybye
        puts "Goodbye, sorry we could not help"
    end

    def invalid
        puts "Hmmm, that doesn't seem valid,try again"
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
        else
            invalid
        end
    end 
end