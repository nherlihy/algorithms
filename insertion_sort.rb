

def sort(list)
	length = list.length - 1
	(0..length).reverse_each do |index|
		value = list[index]

		remainder = index - 1
		(0..remainder).reverse_each do |remaining_index|
			if value < list[remaining_index]
				list[remaining_index + 1] = list[remaining_index]
			else
				list[remaining_index + 1] = value
				break
			end
		end
	end
	list
end

list = [4,2,7,3]
sorted_list = sort(list)
puts sorted_list




