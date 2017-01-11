#write your code here
def echo word
	word
end

def shout word
	word.upcase
end

def repeat (word, num = 2)
	([word]*num).join(" ")
end

def start_of_word (word, num)
	word[0, num]
end

def first_word phrase
	phrase.split(" ")[0]
end

def titleize phrase
	ignore = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'nor', 'over']
	phrase = phrase.split(" ")
	phrase[0].capitalize!
	i = 1
	while i<phrase.length
		unless ignore.include? phrase[i]
			phrase[i].capitalize!
		end
		i+=1
	end
	phrase.join(" ")
end