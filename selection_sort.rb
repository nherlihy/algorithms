# Sorts list using selection sort. Theres no good or bad case
# O(n^2)


def sort(list)
    length = list.length - 1
	(0..length).each do |index|
		min = index
        
		(index+1 ..length).each do |a|
			if list[a] < list[min]
				min = a
			end
		end

		temp = list[index]
		list[index] = list[min]
		list[min] = temp
	end
	list
end

list = [6,2,4,7,100,3,6,7,8,25]
sorted_list = sort(list)
puts sorted_list

