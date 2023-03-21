class StudiesController < ApplicationController
    before_action :move_to_index, except: :index
    def index
        #@studies = Study.all
        @studies = Study.where(user_id: current_user.id)
    end
    
    def edit
        @study = Study.find(params[:id])
    end
    
    def show
        @study = Study.find(params[:id])
    end
    
    def new

    end

    def create
        Study.create(study_record: study_params[:study_record], user_id: current_user.id)
    end

    def update
        study = Study.find(params[:id])
        study.update(study_record: study_params[:study_record], user_id: current_user.id)
    end
    
    def destroy
        study = Study.find(params[:id])
        study.destroy
    end

  private
  def study_params
    params.permit(:study_record)
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
