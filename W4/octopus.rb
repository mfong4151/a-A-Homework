
def slugish_octopus(fishes)
    longest = ''
    fishes.each{|i|longest = i if fishes.all?{|j| i.length >= j.length }}

    return longest

end


def dominant_octopus(fishes)
    fishes.sort_by{|fish| fish.length}[-1]
end

def clever_octopus(fishes)
    longest = ''
    fishes.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end

def slow_dance(tile, t2)
    return t2.index(tile)

end

def constant_dance(tile, t2)
    return t2[tile]
end

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
        "left",  "left-up" ] 


tiles_2 =  {"up" => 0,
            "right-up" => 1,
            "right" => 2,
            "right-down" => 3,
            "down" => 4,
            "left-down" => 5,
            "left", => 6,
            "left-up" => 7}