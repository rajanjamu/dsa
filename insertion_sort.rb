# Sorting array in ascending order using Insertion-Sort algorithm

def sort_array(array)					# Function definition
	len = array.length					# Find length of the array
	(1...len).each do |j|				# Run the loop from second element till the end of array		
		key = array[j]					# Element to be compared with
		i = j - 1 						# Define index variable
		while i >= 0 && array[i] > key	# Run till element is greater than key
			array[i+1] = array[i]		# Shift the elements
			i -= 1 						# Decrement the index variable
		end
		array[i+1] = key 				# Put the key back in the hole
	end
	return array 						# Return the sorted array
end

arr = [4,1,7,2,9,10,100,33,10,89]		# Input array
puts sort_array(arr)					# Print sorted array