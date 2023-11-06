# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # input created a method called totals
  # used the .reduce method to iterate over the array and reduce it into a an array with single objects
  # hash.new to store with the default count as zero this is used to store the number of counts 
  # passed in parameters result and vote 
  result[vote.downcase] += 1
  # converts the string to all letters being lowercased
  result
end
# output an array with the number of votes for each result 

p totalsreduce the array 