#write your code here
def translate phrase
	vowels = /[aeiou]/i
	exception = /qu/
	phrase = phrase.split(" ")

	i=0
	while i<phrase.length
		if phrase[i][0] =~ vowels
			phrase[i] = phrase[i] + "ay"
		elsif phrase[i] =~ exception
			ind = phrase[i].index(exception)
			phrase[i] = phrase[i][ind+2, phrase[i].length]+phrase[i][0,ind+2]+"ay"
			
		else
			ind = phrase[i].index(vowels)
			phrase[i] = phrase[i][ind, phrase[i].length]+phrase[i][0,ind]+"ay"
		end

		i+=1
	end
	phrase.join(" ")
end