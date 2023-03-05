class CapabilitiesController < PagesController

    before_action :authorize

    def new
        @capability = Capability.new
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
        @capability =  Capability.find params[:id]
        @capability.update capability_params

        redirect_to capability_path(capability.id)


    end

    def destroy

        Capability.destroy params[:id]

        redirect_to capabilities_path


    end

    private

    def capability_params

        params.require(:capability).permit(:name)

    end


end