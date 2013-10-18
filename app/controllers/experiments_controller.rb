class ExperimentsController < ApplicationController
  def index
  end

  def new
    @experiment = Experiment.new
  end

  def create
    @experiment = Experiment.new(experiment_params())
    @experiment.data = "lksjdflkjsdlkfjsdlkjflksdjflk"
    if @experiment.save
      redirect_to @experiment
    else
      render :new
    end
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  private

  def experiment_params
    params.require(:experiment).permit(:name, :file)
  end
end