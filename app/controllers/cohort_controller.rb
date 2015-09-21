class CohortController < ApplicationController

# Display

	def index
		@cohorts = Cohort.all
	end


	def new
	end
# Display


# Do stuff
	def create
		# render text:cohort_params.inspect
		@cohort = Cohort.create(cohort_params)
		redirect_to cohort_index_path
	end
# Do stuff


    private
    def cohort_params
      params.require(:cohort).permit(:cohort_Name, :start_Date, :end_Date)
    end

end
