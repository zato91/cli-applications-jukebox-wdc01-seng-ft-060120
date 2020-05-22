# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

end
 
 def list(song)
  song.each_with_index { |val,index| puts "#{index + 1}. #{val}"}
end
 
 def play(songs)
  puts "Please enter a song name or number:"
  song_selec = gets.strip 
 song_selec = song_selec.to_i 
  songs.each_with_index do  |val,index| 
    if song_selec  == (index + 1)
      puts val[index]
    else 
      puts "Invalid input, please try again"
    end
  end
end
 
 def exit_jukebox
  puts "Goodbye"
end
 
def run(songs) 
  puts "Please enter a command:"
  user_choice = gets.strip
  while user_choice != "exit"
    if user_choice == "help"
      help 
       puts "Please enter a command:"
  user_choice = gets.strip
    elsif user_choice == "play"
      play(songs)
 puts "Please enter a command:"
  user_choice = gets.strip
    elsif user_choice == "list"
      list(songs)
      puts "Please enter a command:"
 puts "Please enter a command:"
  user_choice = gets.strip
    else 
      puts "Invalid input, please try again"
      puts "Please enter a command:"
      user_choice = gets.strip
    end 
  end 
  exit_jukebox
  
end 

