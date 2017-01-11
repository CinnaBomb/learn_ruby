class Timer
  #write your code here
  def initialize
  	@seconds = 0
  	#@time_string = "00:00:00"
  end

  def seconds
  	@seconds
  end

  def seconds=(sec)
  	@seconds = sec
  	@time_string = time_string
  end

  def time_string
  	sec = @seconds
  	arr = ['00','00','00']
  	if sec > 36000
  		arr[0][0]= (sec/36000).to_s
  		sec = sec%36000
  	end
  	if sec > 3600
  		arr[0][1]= (sec/3600).to_s
  		sec = sec%3600
  	end
  	if sec > 600
  		arr[1][0]= (sec/600).to_s
  		sec = sec%600
  	end
  	if sec>60
  		arr[1][1]= (sec/60).to_s
  		sec = sec%60
  	end
  	if sec>10
  		arr[2][0]= (sec/10).to_s
  		sec = sec%10
  	end
  	if sec>0
  		arr[2][1]=(sec).to_s
  	end
  	@time_string = arr.join(":")
  end

end
