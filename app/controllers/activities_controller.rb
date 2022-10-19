class ActivitiesController < ApplicationController


    def index
        activity = Activity.all
        render json: activity
    end
    
    def destroy 
        activity = find_activity
        activity.destroy
        head :no_content
    end
    
    private
    

    def find_activity
        Activity.find(params[:id])
    end


end
