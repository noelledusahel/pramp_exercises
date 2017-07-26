require_relative "../island_count"



 describe "traverse graph" do 

 	let(:binary){ [ [0,	   1,    0,    1,    0],
                    [0,    0,    1,    1,    1],
                    [1,    0,    0,    1,    0],
                    [0,    1,    1,    0,    0],
                    [1,    0,    1,    0,    1] ] } 
    
                         

 	# it "marks all cells that contain 1 with -1" do

 	# 	marked_matrix = mark_island(binary)
 	# 	puts "this is the market matrix"
 	# 	expect(marked_matrix[0]).to eq [0, -1, 0, -1, 0]
 	# end

 	it "increases the island count with each island encountered" do
 		expect(get_the_islands(binary)).to eq 6
 	end 

 end 


 	
                          