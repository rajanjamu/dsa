# SORTING ARRAY USING MERGE-SORT ALGORITHM
# AUTHOR: RAJAN GUPTA
# CREATED: 1 DEC 2014

# Split array and return two arrays
def split_array(inArray)
	len = inArray.length
	if (len % 2 == 0)
		outArray = [inArray[0...len/2],inArray[len/2..len]]
	else
		outArray = [inArray[0..len/2],inArray[len/2+1..len]]
	end
	return outArray
end

# Sort the input array
def sort_array(inArray)
	outArray = []
	len = inArray.length
	if inArray[0][0] > inArray[1][0]
		outArray[0] = inArray[1]
		outArray[1] = inArray[0]
	else
		outArray = inArray
	end

	return outArray
end

# Merge two arrays and return merged array
def merge_array(inArray)
	return inArray.flatten
end

def merge_sort(inArray)
	splitArray = split_array(inArray)
	sortArray = sort_array(splitArray)
	mergeArray = merge_array(sortArray)
	return mergeArray
end

# Input variable
arr = [7,9]

# Printing out the result
print merge_sort(arr)