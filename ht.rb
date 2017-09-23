require 'faraday'
require 'json'

# 15318530

last_index = 99999
story_id = ARGV[0].to_i
puts "Monitoring article with id #{story_id}. Fetching..."
while true
  response = Faraday.get('https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty').body
  story_index = JSON.parse(response).find_index(story_id) + 1
  if story_index > last_index
    system("say #{story_index}")
    puts "New index: #{story_index}"
    last_index = story_index
  else
    puts "No change. Sleeping..."
  end
  sleep(5)
end
