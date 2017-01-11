class Book
# write your code here
	def title
		@title
	end

	def title=(phrase)
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
		@title = phrase.join(" ")
	end
end

