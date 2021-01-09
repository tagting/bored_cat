# responsible for commuincating between user and data 
class CLI

    #method to entry point to CLI
    def start
        puts "Welcome to Bored."
        puts "Let's start with your name:"
        API.get_data

        greet(user_input)
    
    end

    def user_input
        gets.strip
    end
  

    def greet(name)
        puts "Hi #{name} !" #!!!! regex needed here
        puts "Inputs 'y' to see the list, 'exit' to leave:" 
        menu
    end

    def goodbye
        puts "Hopefully we could help. But bye for now!"
    end

    def invalid
        puts "Hmmm, that doesn't seem valid,try again"
        menu
    end

    def menu
        selection = user_input

        if selection == 'y'
            activity_list
            menu
        elsif selection == 'exit'
            goodbye
        else
            invalid
        end
    end 
end