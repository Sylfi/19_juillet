# Let's create a folder les loulous
def check_if_user_gave_input #check if user entered a word (and only one), then ask him to
    abort("Tu n'as pas tapé le nom de ton dossier, essaye encore") if ARGV.empty?
    #abort("entre un seul mot :)") if ARGV=<2?

end

def get_folder_name #says it all
    return folder_name = ARGV.first
end

def create_folder(name) #create folder from get_folder_name
    Dir.mkdir(name)
end

def create_folder_all #wraps three last defs
    check_if_user_gave_input
    get_folder_name
    name = get_folder_name
    create_folder(name)
end



def create_gemfile(name) # Now let's create the gemfile with all the gems we need ! 
    Dir.chdir "#{name}"
    File.open("gemfile", "w"){|file| file.puts "source 'https://rubygems.org'
                                                ruby '2.6.3'
                                                 gem 'rubocop', '~> 0.57.2'
                                                gem 'rspec'
                                                gem 'dotenv'
                                                gem 'launchy', '~> 2.4', '>= 2.4.3' "
                                }
    
end

def git_init #let's git init! :) simple as that ! 
   # Dir.chdir "#{name}"
    system("git init")
end

# # def env_file #creation of the .env file, then add it in the gitignore file
# #     Dir.chdir "#{name}"
# #     File.open ("env", "w")
# #     file.close
# # end

def perform #one method to link them all
    create_folder_all
    name = get_folder_name
    create_gemfile(name)
    system("git init") #initialise git baby !

end 

perform

