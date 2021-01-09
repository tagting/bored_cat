# responsible for commuincating between user and data 
class CLI

    #method to entry point to CLI
    def start
        puts "Welcome to Bored."
        puts "Let's start with your name:"
        greet(user_input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Hi #{name} !"
        puts "Inputs 'y' to see the list, 'exit' to leave:" 
    end

    def menu
        selection = user_input

        if selection == 'y'
            #
        elsif selction == 'exit'
            #
        else
            #invalid output, and make the user select again
        end
    end 
end