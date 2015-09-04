module CurriculumTreeHelper


	def render_topic(topic)
		if topic.children.count > 0 
			("<details><summary>" + topic.name + "</summary>" + topic.children.map {|a| render_topic(a)}.join(" ") + "</details>")
		else
			"<p>" + topic.name + "</p>"
		end
	end

# 	def populate_tree(hashyhash)
# 			tree = "" 
# 	    hashyhash.each do |key, value|
# 	    	tree += "<details><summary>" + key + "</summary>"   
# 	      if value.is_a?(Hash)
# 	        tree += populate_tree(value)
# 	      else 
# 	        tree += "<p>" + value + "</p>"
# 	      end
# 	      tree += "</details>"
# 	    end
# 	    tree
# 	end 



# #If it has no children, puts its name in p tags. If it does, recurse




# # def populate_tree(this_level_topics)
# # 		tree = "" 
# # 		this_level_topics.each do |subject|
# # 			tree += "<details><summary>" + subject.name + "</summary>" 
# # 		if subject.children.count 
# # 			subject.children.each do |x|
# # 				puts x.name
# # 				tree += "<>" + x.name + "</p>"
# # 			end
# # 		else
# # 			puts "apple"
# # 			nek_level = subject.children
# # 			populate_tree(nek_level)
# # 		end
# # 		tree += "</details>"
# # 	end
# # 	tree
# # end



# def populate_tree(this_level_topics)
# 	tree = ""
# 	this_level_topics.each do |level_one|
# 		tree += "<details><summary>" + level_one.name + "</summary>"
# 		parent_one = [] 
# 		level_one.children.each {|x|parent_one << x}
# 			parent_one.each do |level_two|
# 				if level_two.children > 0
# 					populate_tree(parent_one)
# 				else tree += "<p>" + level_two.name + "</p>"
# 			end

# 		end
# 	end

# end

end #end of module