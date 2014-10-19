# learning Hashes.  motivated by Koans

# 3 ways to create a Hash okay 4 if you count the special symbol way

bugs = {"fly" => "amanda", "spider" => "charlotte", "mosquito" => "chuck" }

dogs = {"cattle_dog" => "roo", "greyhound" => "agatha", "dachsund_pit" => "red" }

#cats[ "rosie", 1, "junior", 2, "pearl", 3]

#houses[ 1, "215 Moultrie", 2, "LongCove Maine" 3, "12 rue Braca"]

# with symbols
jobs = {Euclid_lib: 1, McDonalds: 2, Things_Remembered: 3, CCSF: 4}

puts bugs

puts bugs.size

puts bugs.class


#include? is a synonym for has_key? and key? all return boolean!!!

puts bugs.include?("bug")

puts dogs.key?("greyhound")

puts bugs.has_key?("fly")

#value? is a synonym for has_value? and of course returns boolean!

puts bugs.has_value?("charlotte")

puts bugs.value?("chuck")

#tricky here Hash.key returns the key of the value given

puts bugs.key("chuck")
puts bugs.key("charlotte")
puts bugs.key("mary")

#there is no value equivalent so this returns no method puts bugs.value("fly")
# can return all the values in a hash
puts bugs.values
puts bugs["fly"] + "shows value of bugs[fly] "

puts "the vagaries of fetch.  if a default is defined then always returns valid. else it will raise a KeyError: key not found: 'z.b. key'"

puts "test_default_is_the_same_object_conundrum"

hs = Hash.new([])
puts hs
puts "its empty {} returns nil"

hs[:one] << 'one'
hs[:two] << 'two'

puts  "hs[:one] << 'one' will return an array ['one'] "
puts  "hs[:two] << 'two' will return an array ['two'] "
puts  "but critically important, hs is still empty"

puts "however if you hs[:nonexistent] it will return ['one', 'two']"
puts " but hs is still empty"
puts " this is because you mutated the default value by mutating the array that holds keys!!!"

puts hs[:nonesistent]
puts hs

puts "that was a default array WITH mutation, now lets try WITHOUT mutation"

hsh = Hash.new ([])
puts hsh
puts "its empty {} returns nil"

puts "now we add to the array using += instead of << and we mutate the HASH"
hsh[:five] += ['five']
hsh[:six] += ['six']

# this is syntatic sugar for hsh[:six] = hsh[:six] + ['six']

puts "hsh[:five] += ['five'] changes hsh to {:five=>['five']"
puts hs[:noway]
# this returns an empty array which of course is the default value
puts " We did not mutate the default value its still []"
puts hs
puts "Clearly we mutated the hash..."

puts "Add the default block behavior here!!!!  look it up in evernote hash note"














