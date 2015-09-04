module CurriculumTreeHelper


	# def populate_tree(hashyhash)
	# 		tree = "" 
	#     hashyhash.each do |key, value|
	#     	tree += "<details><summary>" + key + "</summary>"   
	#       if value.is_a?(Hash)
	#         tree += populate_tree(value)
	#       else 
	#         tree += "<p>" + value + "</p>"
	#       end
	#       tree += "</details>"
	#     end
	#     tree
	# end 






def populate_tree(this_level_topics)
		puts "bum"
		tree = "" 
		this_level_topics.each do |subject|
			tree += "<details><summary>" + subject.name + "</summary>" 
		if subject.children.count == 0
			puts "banana"
			subject.children.each do |x|
				tree += "<p>" + x.name + "</p>"
			end
		else
			puts "apple"
			nek_level = subject.children
			populate_tree(nek_level)
		end
		tree += "</details>"
	end
	tree
end

end #end of module