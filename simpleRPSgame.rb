require 'sinatra'

a = []
computerscore = 0
playerscore = 0

get '/rock' do 
	
	rock = ["HA! Paper beats rock.", "Damn, rock beats scissors. play again?", "Well, we tied. Another?"]

	x = rock.shuffle[0]

	

	if x == rock[0]
		computerscore = computerscore + 1
		return x
		
	elsif x == rock[1]
		playerscore = playerscore + 1
		return x

	else
		playerscore = playerscore
		computerscore = computerscore
		return x
	end

	

end

get '/paper' do
	
	paper = ["HA! Scissors beats paper.", "Damn, paper beats rock. play again?", "Well, we tied. Another?"]

	x = paper.shuffle[0]

	if x == paper[0]
		computerscore = computerscore + 1
		return x
		
	elsif x == paper[1]
		playerscore = playerscore + 1
		return x

	else
		playerscore = playerscore
		computerscore = computerscore
		return x
	end

end

get '/scissors' do
	
	scissors = ["HA! Rock beats scissors.", "Damn, scissors beats paper. play again?", "Well, we tied. Another?"]

	x = scissors.shuffle[0]

	if x == scissors[0]
		computerscore = computerscore + 1
		return x
		
	elsif x == scissors[1]
		playerscore = playerscore + 1
		return x

	else
		playerscore = playerscore
		computerscore = computerscore
		return x
	end

end

get '/score' do

	a = ["Computer score: " +computerscore.to_s + ",", " Player score: " + playerscore.to_s]
	
	a
	

end