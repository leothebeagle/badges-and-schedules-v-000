require 'pry'
speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  speakers.map do |speaker|
    badge_maker(speaker)
  end
end

def assign_rooms(speakers)
  speakers.collect.each_with_index do |speaker, index|
    room_number = index + 1
    "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
  end
end

def printer(speakers)
  batch_badge_creator(speakers).each do |badge_message|
    puts badge_message
  end
  assign_rooms(speakers).each do |room_assignment|
    puts room_assignment
  end
end
