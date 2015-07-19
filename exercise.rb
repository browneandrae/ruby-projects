class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  
  def self.marklar(str)
	strarry = str.split(/\s+|\b/)
	str = ""
	temp = ""
	strarry.map! { |c|

		if c.length > 4 
			if c == c.capitalize
				c = "Marklar"
			elsif c == c.downcase
				index = strarry.find_index(c) 
				if strarry[index+1] == "?" || strarry[index+1] == "."
					temp = "marklar" + strarry[index+1]
					strarry.delete_at(index+1)
					c = temp
				else 
					c = "marklar"
				end
			else	
				c = "Should not get here"
			end
		else
			c
		end
	}
	backToStr = strarry.join(" ")
	return backToStr
    # TODO: Implement this method
  end
  


  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
		# TODO: Implement this method
		array = [1,1]
		i=2
		while i < nth
			sum = array[i-2] + array[i-1]
			array.push(sum)
			i += 1
		end
		total = 0
		array.each { |x| 
			if(x % 2 == 0)
			total += x
			end
		}
		return total
	end
end