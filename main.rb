dir = "~/dev/src/"
urlo = ARGV[0]
if urlo.nil?
    puts "use gclone {url}"
    exit
end
url = urlo.sub(Regexp.new("https?:"), "")
url_arr = url.split(Regexp.new("\/\/?"))
url_arr = url_arr.reject { |u| u.empty?}
path = ""
url_arr.each {|u| path += u + "/"}

path = dir + path
if !urlo.include? "https://"
    urlo = "https://#{urlo}"
end
puts "#{urlo}\n #{path}"


`mkdir -p #{path}`
# `git clone #{urlo} #{path}`



