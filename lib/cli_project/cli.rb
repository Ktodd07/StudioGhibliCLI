class CliProject::CLI

    def start
        API.get_data
        intro
        menu
    end

    def intro
        puts ""
        puts "-----------------------------------------"
        puts "  Welcome to the Studio Ghibli Gallery!".light_yellow
        puts "-----------------------------------------"
        film_list
        puts ""
        puts "Please enter the number (1-20) of the film you would like to know more about. Otherwise, enter [exit] to end the program: "
        puts ""
    end

    def menu
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i < Films.all.length + 1
                film = film_info[input.to_i - 1]
                puts ""
                puts "----------------------------------------"
                puts "Title: ".light_blue + "#{film.title}"
                puts ""
                puts "Director: ".light_blue + "#{film.director}"
                puts ""
                puts "Release Date: ".light_blue + "#{film.release_date}"
                puts ""
                puts "Description: ".light_blue + "#{film.description}"
                puts "----------------------------------------"
                puts ""
                puts "If you would like to find out more about another film, please enter in the number (1-20) of the desired film. \nIf you would like to see the list of films again, enter [list]. Otherwise, enter [exit] to end the program: "
                puts ""
            elsif input == "list"
                film_list
            elsif input != "exit"
                invalid
            else
                exit
            end
        end
    end

    def invalid
        puts ""
        puts "Invalid entry. Please try again: ".red
        puts ""
    end

    
    def film_list
        Films.all.each_with_index do |film, index|
            puts ""
            puts "[#{index + 1}] ".light_green + "#{film.title}"
            puts ""
        end
    end

    def film_info
        Films.all.each.with_index do |film, index|
        end
    end

    def exit
        puts ""
        puts "Thank you for visiting!"
        puts ""
        puts <<-DOC
         _____
        /     \\            See you next time!
        vvvvvvv  /|__/|
           I   /O = O |
           I  /_____  |       /| /|
          J|/^ ^ ^ \\  |      /0= 0|    _//|
           |^ ^ ^ ^|W||     |/^^\\ |   /oo |
             \m___m__|_|      \\m_m_|   \\mm_|
    DOC
    puts ""
    end

end