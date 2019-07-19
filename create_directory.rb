def check_if_user_gave_input
    abort("mkdir: missing input") if ARGV.empty?
end

def get_folder_name
    return folder_name = ARGV.first
end

def create_folder(name)
    Dir.mkdir(name)
end

def run 
    check_if_user_gave_input
    get_folder_name
    name = get_folder_name
    create_folder(name)
end

run