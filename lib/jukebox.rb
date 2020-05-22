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
puts"- play : lets you choose a song to play"
puts"- exit : exits this program"
end
 
 def help(songs)
  song.each_with_index { |val,index| puts "#{index + 1}. #{val}"}
end
 
 def play(song)
  puts "Please enter a song name or number:"
  song_selec = gets.strip - 1
  song.each_with_index do  |val,index| 
    if song_selec == index
      puts val[index]
    else 
    puts "#{index + 1}. #{val}"
  end
end
 
 def exit_jukebox
  puts "Goodbye"
end
 

