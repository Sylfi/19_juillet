def write_in_file
    file = File.open("Gemfile", "a")
file.puts("gem 'pry'")
file.close
end

def display_file
file = File.open("Gemfile", "r")
puts "Voici le contenu de ton Gemfile :"
puts file.read
file.close
end
write_in_file
display_file