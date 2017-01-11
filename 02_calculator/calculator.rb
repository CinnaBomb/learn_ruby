#write your code here
def add (num1, num2)
	num1+num2
end

def subtract (num1, num2)
	num1-num2
end

def sum arr
	sum = 0
	i=0
	while i < arr.length
		sum+=arr[i]
		i+=1
	end 
	sum
end

def multiply arr
	total = 1
	i=0
	while i < arr.length
		total*=arr[i]
		i+=1
	end 
	total
end

def power(num1, num2)
	num1**num2
end

def factorial num
	total = 1
	while num>0
		total*=num
		num-=1
	end
	total
end
