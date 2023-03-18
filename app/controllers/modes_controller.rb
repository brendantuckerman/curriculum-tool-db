class ModesController < PagesController

    before_action :authorize

    #Create
    def new
        @mode = Mode.new
    end

    # Post

    def create
        Mode.create mode_params

        redirect_to modes_path

    end

    #Read

    def index
        @modes = Mode.all
    end

    #Update
    def edit
        @mode = Mode.find params[:id]
    end

    def update
        mode =  Mode.find params[:id]
        mode.update mode_params

        redirect_to mode_path(mode.id)
        
    end

    def destroy
        Mode.destroy params[:id]

        redirect_to modes_path
    end

    ########

    private

    def mode_params
        params.require(:mode).permit(:name, :notes, :learning_area_id)
    end #end mode_params

    
end #class