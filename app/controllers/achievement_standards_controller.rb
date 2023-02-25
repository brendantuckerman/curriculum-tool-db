class AchievementStandardsController < PagesController

    #Create
    def new
        @achievement_standard = AchievementStandard.new
    end

    # Post

    def create
        AchievementStandard.create achievement_standard_params

        redirect_to achievement_standards_path

    end

    #Read

    def index
        @achievement_standards = AchievementStandard.all
    end

    #Update
    def edit
        @achievement_standard = AchievementStandard.find params[:id]
    end

    def update
        achievement_standard =  AchievementStandard.find params[:id]
        achievement_standard.update achievement_standard_params

        redirect_to achievement_standard_path(achievement_standard.id)
        
    end

    def destroy
        AchievementStandard.destroy params[:id]

        redirect_to achievement_standards_path
    end

    ########

    private

    def achievement_standard_params
        params.require(:description, :year_id, :learning_area_id).permit(:knowledge, :skills, :understand)
    end #end achievement_standard_params

    
end #class