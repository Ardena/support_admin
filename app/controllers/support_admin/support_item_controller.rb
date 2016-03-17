class SupportAdmin::SupportItemController < SupportAdmin::ApplicationController

  def index
    model = params["model_name"].camelize.constantize
    @models = model.order(:id).page params[:page]
    @headers = model.column_names.map(&:titleize)
  end
end