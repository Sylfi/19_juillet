require 'launchy'


def check_if_user_gave_input #demande une reqête si y'en a pas
    abort("rentre une requête Google stp :)") if ARGV.empty?
end

def enter_a_request #crée l'objet requête
    return request = ARGV
end

def do_google_search(request) #fais la requête
    Launchy.open("https://www.google.com/search?q=#{request}")
end

def launch
    check_if_user_gave_input
    enter_a_request
    request = enter_a_request
    do_google_search(request)
end

launch
