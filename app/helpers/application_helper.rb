# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  AnalyticsEnvironments = Set.new %w( production express )
  def analytics
    render :file => 'layouts/analytics.html' if AnalyticsEnvironments.include? Rails.env
  end
end
