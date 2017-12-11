# **Must be ordered list**
# O(Log n)

def search(list, num)
	min = 0
	max = list.size - 1
	
	match = false

	while !match
		if max < min
			puts "Number is not in the array"
			break
		end

		index_search = (max + min)/2
		puts "Searching at index: #{index_search}"

		if list[index_search] == num
			puts "is equal"
			match = true

		elsif list[index_search] > num
			puts "Is greater"
			max = index_search - 1

		else
			puts "Is less"
			min = index_search + 1
		end

		puts "Max: #{max}\n Min: #{min}\n\n"
	end
end

test = [1,2,3,4,5,6,7,8,9,10]
search(test,10)
