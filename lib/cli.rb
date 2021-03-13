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
        #asks user if they want to search by rank, artist, or view the list
        puts "Would you like to search by:\n 1) Rank\n 2) Artist\n 3) List"
        choice = gets.chomp.to_i
        if choice == 1
            search_by_rank
        elsif choice == 2
            search_by_artist
        elsif choice == 3
            view_list
        else
            puts "Sorry I didn't understand"
        end
    
    end

    def search_by_rank
        puts "What rank do you want to check?"
        rank = gets.chomp.to_i
        get_song_list
        puts @songs[rank-1]
        #returns song info for rank chosen
    end

    def search_by_artist
        puts "search by artist"
        #asks user for artist
        #returns song information
    end

    def view_list
        get_song_list
        puts @songs
        #returns Billboard top 100
    end


    



  

end