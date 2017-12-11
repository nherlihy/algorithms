# **Must be ordered list**
# O(Log n)

def search(list, num)
	puts "Using array:\n#{list}"
	puts "Searching for #{num}"
	min = 0
	max = list.size - 1
	
	match = false

	while !match
		# Number is not in the array
		if max < min
			break
		end

		index_search = (max + min)/2
		puts "Searching at index: #{index_search}"

		if list[index_search] == num
			match = true
			puts "Found #{num} at index #{index_search}"

		elsif list[index_search] > num
			max = index_search - 1

		else
			min = index_search + 1
		end
	end
end

test = [1,2,3,4,5,6,7,8,9,10]
search(test,3)
