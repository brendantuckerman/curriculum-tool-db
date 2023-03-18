class PrioritiesController < PagesController

    before_action :authorize

    #Create
    def new
        @priority = Priority.new
    end

    # Post

    def create
        priority.create priority_params

        redirect_to priorities_path

    end

    #Read

    def index
        @priorities = Priority.all
    end

    #Update
    def edit
        @priority = Priority.find params[:id]
    end

    def update
        priority =  Priority.find params[:id]
        priority.update priority_params

        redirect_to priority_path(priority.id)
        
    end

    def destroy
        priority.destroy params[:id]

        redirect_to priorities_path
    end

    ########

    private

    def priority_params
        params.require(:priority).permit(:title, :description)
    end #end mode_params

    
end #class