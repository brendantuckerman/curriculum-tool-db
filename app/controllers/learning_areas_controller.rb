class LearningAreasController < PagesController

    before_action :authorize

    #Create
    def new
        @learning_area = LearningArea.new
    end

    # Post

    def create
        LearningArea.create learning_area_params

        redirect_to learning_areas_path

    end

    #Read

    def index
        @learning_areas = LearningArea.all
    end

    #Update
    def edit
        @learning_area = LearningArea.find params[:id]
    end

    def update
        learning_area =  LearningArea.find params[:id]
        learning_area.update learning_area_params

        redirect_to learning_area_path(learning_area.id)
        
    end

    def destroy
        LearningArea.destroy params[:id]

        redirect_to learning_areas_path
    end

    ########

    private

    def learning_area_params
        params.require(:learning_area).permit(:name)
    end #end learning_area_params

    
end #class