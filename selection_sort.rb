
def sort(list)
	(0 ..(list.length -1)).each do |index|
		min = index

		(index+1 ..(index.length -1)).each do |a|
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

list = [6,2,4,7]
sorted_list = sort(list)
puts sorted_list

