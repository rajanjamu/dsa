# SORTING ARRAY USING MERGE-SORT ALGORITHM
# AUTHOR: RAJAN GUPTA
# CREATED: 1 DEC 2014
# UPDATED: 1 DEC 2014

# Merge-Sort function
def merge_sort(inArray)
	if inArray.length > 1
		# Split array using split function
		splitArray = split(inArray)
		# Returns sorted array if array.len > 1
		return merge(merge_sort(splitArray[0]), merge_sort(splitArray[1]))
	else
		# Returns array if array.len == 1
		return inArray
	end
end

# Split the input array inArray into two equal/almost-equal parts
# Returns two split arrays within master array
def split(inArray)
	len = inArray.length
	if (len % 2 == 0)
		# Equally split the array into two parts
		return outArray = [inArray[0...len/2],inArray[len/2..len]]
	else
		# Unequally split with first array having one extra element than second array
		return outArray = [inArray[0..len/2],inArray[len/2+1..len]]
	end
end

# Merges two input arrays in ascending order
def merge(inArray1, inArray2)
	len1 = inArray1.length
	len2 = inArray2.length
	i = 0
	j = 0
	k = 0
	outArray = []
	# Run the loop till program reaches end of any of the array
	while i < len1 && j < len2
		# Add element to outArray according to which one is higher
		# Keep incrementing the index of the array whose element has been added
		if inArray1[i] < inArray2[j]
			outArray[k] = inArray1[i]
			i += 1
		else
			outArray[k] = inArray2[j]
			j += 1
		end
		k += 1
	end
	# Concatenate the remaining elements of the array index of which has not reached the end
	outArray += inArray2[j...len2] if i == len1
	outArray += inArray1[i...len1] if j == len2
	return outArray
end

# Input variable
inArray = [1,4,7,15,17, 2,5,9,10,88,1]

# Print the answer
print merge_sort(inArray)
puts ""