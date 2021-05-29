###https://github.com/anjaanabishek10

#####IMPORT#####
####################################################################################################################################################

require 'net/http'

####################################################################################################################################################

#####Command Line Arug#####
####################################################################################################################################################

flag, $url1, $url2, *waste = ARGV
$file = "traven.txt"

####################################################################################################################################################

#####Help#####
####################################################################################################################################################

def help()
    
    puts "\033[1;31mUSAGE:"
    puts "\033[1;37mruby traven.rb flag url_1 url_2(optional)"
    puts ""
    
    puts "\033[1;31mFLAG:"
    puts "\033[1;37m-h or --help   => show the help menu"
    puts "\033[1;37m-s or --single => accept single url"
    puts "\033[1;37m-d or --double => accept double url"
    puts ""

    puts "\033[1;31mEXAMPLE:"
    puts "\033[1;37mruby traven.rb -h"
    puts "\033[1;37mruby traven.rb -s http://example.com"
    puts "\033[1;37mruby traven.rb --single https://example.in"
    puts "\033[1;37mruby traven.rb -d http://example.com https://example.org"
    puts "\033[1;37mruby traven.rb --double https://example.in https://example.in"
    puts ""

end

####################################################################################################################################################

#####Banner#####
####################################################################################################################################################

def banner()

    system('clear')

    sleep(0.1)
    puts "\033[1;31m████████\033[1;37m╗\033[1;31m██████\033[1;37m╗  \033[1;31m█████\033[1;37m╗ \033[1;31m██\033[1;37m╗   \033[1;31m██\033[1;37m╗\033[1;31m███████\033[1;37m╗\033[1;31m███\033[1;37m╗   \033[1;31m██\033[1;37m╗"
    sleep(0.1)
    puts "\033[1;37m╚══\033[1;31m██\033[1;37m╔══╝\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m╔════╝\033[1;31m████\033[1;37m╗  \033[1;31m██\033[1;37m║"
    sleep(0.1)
    puts "\033[1;31m   ██\033[1;37m║   \033[1;31m██████\033[1;37m╔╝\033[1;31m███████\033[1;37m║\033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║\033[1;31m█████\033[1;37m╗  \033[1;31m██\033[1;37m╔\033[1;31m██\033[1;37m╗ \033[1;31m██\033[1;37m║"
    sleep(0.1)
    puts "\033[1;31m   ██\033[1;37m║   \033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m║╚\033[1;31m██\033[1;37m╗ \033[1;31m██\033[1;37m╔╝\033[1;31m██\033[1;37m╔══╝  \033[1;31m██\033[1;37m║╚\033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m║ \033[1;31m+-+-+-+-+-+-+-+-+-+-+-+-+-+"
    sleep(0.1)
    puts "\033[1;31m   ██\033[1;37m║   \033[1;31m██\033[1;37m║  \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║  \033[1;31m██\033[1;37m║ ╚\033[1;31m████\033[1;37m╔╝ \033[1;31m███████\033[1;37m╗\033[1;31m██\033[1;37m║ ╚\033[1;31m████\033[1;37m║ \033[1;31m|\033[1;37mU\033[1;31m|\033[1;37mn\033[1;31m|\033[1;37m5\033[1;31m|\033[1;37me\033[1;31m|\033[1;37me\033[1;31m|\033[1;37mN\033[1;31m|\033[1;37m3\033[1;31m|\033[1;37mx\033[1;31m|\033[1;37mP\033[1;31m|\033[1;37m1\033[1;31m|\033[1;37m0\033[1;31m|\033[1;37mI\033[1;31m|\033[1;37mT\033[1;31m|"
    sleep(0.1)
    puts "\033[1;37m   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝ \033[1;31m+-+-+-+-+-+-+-+-+-+-+-+-+-+"
    sleep(0.1)
    puts "\033[1;31mhttps://github.com/anjaanabishek10"
    sleep(0.1)
    puts ""

    puts "\033[1;31m# \033[1;37mDISCORD  :   anjaanabishek#6186                               \033[1;31m#"
    puts "\033[1;31m# \033[1;37mGMAIL    :   anjaanabishek10@gmail.com                        \033[1;31m#"
    puts "\033[1;31m# \033[1;37mINSTA    :   https://www.instagram.com/anjaan.abishek/        \033[1;31m#"
    puts "\033[1;31m# \033[1;37mLINKEDIN :   https://www.linkedin.com/in/abishek-k-11217b1b5/ \033[1;31m#"
    puts ""

end

####################################################################################################################################################

#####Single#####
####################################################################################################################################################

def single()

    File.readlines($file).each do |line|

        begin

            uri = URI($url1+'/'+line.chomp)
            res = Net::HTTP.get_response(uri)

            if(res.code != '404')

                puts "\033[1;31mTARGET:[\033[1;37m#{res.code}\033[1;31m] => \033[1;37m#{uri}"

            end

        rescue SocketError => e

            puts "\033[1;31m!!!\033[1;37mProgram Stopped due to some Error\033[1;31m!!!"
            puts "\033[1;31mNetwork Problem:"
            puts "\033[1;37mCheck your Internet Connection"
            puts "\033[1;31mInvalid URL:"
            puts "\033[1;37mCheck the URL you have Passed"
            puts ""

            break
        
        rescue Net::OpenTimeout => e

            next

        rescue URI::InvalidURIError => e

            next

        rescue Errno::ECONNREFUSED => e

            puts "\033[1;31m!!!\033[1;37mProgram Stopped due to some Error\033[1;31m!!!"
            puts "\033[1;31mInvalid URL:"
            puts "\033[1;37mCheck the URL you have Passed"
            puts ""

            break

        end

    end

end

####################################################################################################################################################

#####Double#####
####################################################################################################################################################

def double()

    File.readlines($file).each do |line|

        begin

            uri1 = URI($url1+'/'+line.chomp)
            uri2 = URI($url2+'/'+line.chomp)
            res1 = Net::HTTP.get_response(uri1)
            res2 = Net::HTTP.get_response(uri2)

            if((res1.code != '404') && (res2.code != '404'))

                puts "\033[1;31mTARGET_1:[\033[1;37m#{res1.code}\033[1;31m] => \033[1;37m#{uri1}"
                puts "\033[1;31mTARGET_2:[\033[1;37m#{res2.code}\033[1;31m] => \033[1;37m#{uri2}"

            elsif((res1.code != '404') && (res2.code == '404'))

                puts "\033[1;31mTARGET_1:[\033[1;37m#{res1.code}\033[1;31m] => \033[1;37m#{uri1}"

            elsif((res1.code == '404') && (res2.code != '404'))

                puts "\033[1;31mTARGET_2:[\033[1;37m#{res2.code}\033[1;31m] => \033[1;37m#{uri2}"

            else

                next

            end

        rescue SocketError => e

            puts "\033[1;31m!!!\033[1;37mProgram Stopped due to some Error\033[1;31m!!!"
            puts "\033[1;31mNetwork Problem:"
            puts "\033[1;37mCheck your Internet Connection"
            puts "\033[1;31mInvalid URL:"
            puts "\033[1;37mCheck the URL you have Passed"
            puts ""

            break
        
        rescue Net::OpenTimeout => e

            next

        rescue URI::InvalidURIError => e

            next

        rescue Errno::ECONNREFUSED => e

            puts "\033[1;31m!!!\033[1;37mProgram Stopped due to some Error\033[1;31m!!!"
            puts "\033[1;31mInvalid URL:"
            puts "\033[1;37mCheck the URL you have Passed"
            puts ""

            break

        end

    end

end

####################################################################################################################################################

#####Start#####
####################################################################################################################################################

if((flag == '-h') || (flag == '--help'))

    banner()
    help()

elsif(((flag == '-s') || (flag == '--single')) && (($url1&.size != 0) && ($url1&.size != nil)) && (($url2&.size == nil) || ($url2&.size == 0)))

    banner()
    single()

elsif(((flag == '-d') || (flag == '--double')) && (($url1&.size != 0) && ($url1&.size != nil)) && (($url2&.size != 0) && ($url2&.size != nil)) && ((waste&.size == nil) || (waste&.size == 0)))

    banner()
    double()

else

    banner()
    help()

end

####################################################################################################################################################