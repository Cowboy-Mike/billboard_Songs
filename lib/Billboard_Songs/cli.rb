class BillboardSongs::CLI 
    def greeting
        puts "Let's see what songs are top of the chart this week!"
        #get song list      
        #offer choice - type specific song or show list
        user_choice
    end

    def get_song_list
        @songs = ["song 1", "song 2", "Song 3"]
    end

    def user_choice
        puts "Would you like to search by ranking or browse the list?"
        puts "Enter rank or continue to view list"
        choice = gets.chomp.to_i-1
        get_song_list
        puts @songs[choice]
    end

    def this_is_a_test
        puts "testing"
    end
    



  

end