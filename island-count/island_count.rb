binaryMatrix = [ [0,    1,    0,    1,    0],
                         [0,    0,    1,    1,    1],
                         [1,    0,    0,    1,    0],
                         [0,    1,    1,    0,    0],
                         [1,    0,    1,    0,    1] ]
                         

def get_the_islands(matrix)

	islands = 0

	rows = matrix.length
	cols = matrix[0].length

	i = 0 
	until i >= rows - 1
		j = 0 
		until j >= cols - 1
			if matrix[i][j] == 1
				mark_island(matrix, cols, rows, i , j)
				islands += 1
			end 
		j += 1 
		end
	i += 1
	end

	return islands
end 

def mark_island(matrix, cols, rows, i , j)
	# Initiate an object queue
	q = []
	# push coordinates
	q.push([i, j]) 

	while (!q.empty?)
		# when the queue is not empty, inspect the last item. if the cell value is 1,  change it to -1
		item = q.pop
		x = item[0]
		y = item[1]
		if matrix[x, y] == 1
			matrix[x,y] = -1
			push_to_queue(rows, cols, q, x + 1, y)
			push_to_queue(rows, cols, q, x - 1, y)
			push_to_queue(rows, cols, q, x , y + 1 )
			push_to_queue(rows, cols, q, x , y - 1)
		end 
	end
end    

def push_to_queue(rows, cols, q, x, y)

	if x >= 0 && x < rows && y >= 0 && y < cols
		q.push([x,y])
	end 

end                      
	
	# marked_matrix = []
	# matrix.each do |matrix_row|
	# 	marked_row = []
	# 	matrix_row.each_with_index do |matrix_cell, position|
	# 		if matrix_cell == 1
	# 			marked_row.push(-1)
	# 		else 
	# 			marked_row.push(matrix_cell)
	# 		end 
	# 	end 
	# 	marked_matrix.push(marked_row)
	# end 
	# p marked_matrix

