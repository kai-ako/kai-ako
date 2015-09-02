module CurriculumTreeHelper


	def populate_tree(hashyhash)
			tree = "" 
	    hashyhash.each do |key, value|
	    	tree += "<details><summary>" + key + "</summary>"   
	      if value.is_a?(Hash)
	        tree += populate_tree(value)
	      else 
	        tree += "<p>" + value + "</p>"
	      end
	      tree += "</details>"
	    end
	    tree
	end 

end #end of module