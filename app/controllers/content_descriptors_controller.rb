class ContentDescriptorsController < PagesController

    before_action :authorize

    #TODO: Params needs a connection between CD and has many connections

    def new
        @content_descriptor = ContentDescriptor.new
    end

    def create

        ContentDescriptor.create content_descriptor_params
        redirect_to content_descriptors_path

    end

    def index

        @content_descriptors = ContentDescriptor.all

    end

    def show
        
        @content_descriptor = ContentDescriptor.find params[:id]

    end

    def edit

        @content_descriptor = ContentDescriptor.find params[:id]

    end

    def update

        @content_descriptor =  ContentDescriptor.find params[:id]
        @content_descriptor.update content_descriptor_params

        redirect_to content_descriptor_path(content_descriptor.id)
    
    end

    def destroy

        ContentDescriptor.destroy params[:id]

        redirect_to content_descriptors_path

    end

    private

    def content_descriptor_params

        params.require(:content_descriptor).permit(:title, :description, :code, :elaborations, :knowledge, :understanding, :skills, :notes)

        
     
    end


end