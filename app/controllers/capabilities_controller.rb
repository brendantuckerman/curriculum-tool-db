class CapabilitiesController < PagesController

    before_action :authorize

    def new
        @capabilitiy = Capability.new
    end

    def create

        Capability.create capability_params
        redirect_to capabilities_path

    end

    def index

        @capabilities = Capability.all

    end

    def edit

        @capability = Capability.find params[:id]

    end

    def update
    
    end

    def destroy

    end

    private

    def capability_params

        params.require(:capability).permit(:name)

    end


end