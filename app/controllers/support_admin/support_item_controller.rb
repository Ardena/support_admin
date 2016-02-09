class SupportAdmin::SupportItemController < SupportAdmin::ApplicationController

  def index
    model = params["model_name"].camelize.constantize
    @models = model.all
    @headers = model.column_names.map(&:titleize)
  end
end