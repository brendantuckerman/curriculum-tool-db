class ClassGroupsController < PagesController

    before_action :authorize

    def new
        @class_group = ClassGroup.new
    end

    def create

        ClassGroup.create class_group_params
        redirect_to class_groups_path

    end

    def index

        @class_group = ClassGroup.all

    end

    def show
        
        @class_group = ClassGroup.find params[:id]

    end

    def edit

        @class_group = ClassGroup.find params[:id]

    end

    def update

        @class_group =  ClassGroup.find params[:id]
        @class_group.update capability_params

        redirect_to class_group_path(class_group.id)
    
    end

    def destroy

        ClassGroup.destroy params[:id]

        redirect_to class_groups_path

    end

    private

    def class_group_params

        params.require(:class_group).permit(:class_code, :name, :description, :user_id, :learning_area_id)


     
    end


end